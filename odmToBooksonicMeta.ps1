Function Convert-ForEachData($data, $strPrepend, $lenRemove, $where = {$_}){
    $str = ""
    $data| Where-Object $where| Foreach-Object{
        $str += "$($_."#text")$strPrepend"
    }
    return $str.Substring(0,$str.Length-$lenRemove)
}

$path = $(Read-Host "Enter path to the folder containing the odm file")

try{
    Set-Location $path -ErrorAction Stop
}Catch{
    Write-Warning "Invalid path"
    Break
}

$odm = $(Get-ChildItem .| Where-Object {$_.FullName -like "*.odm"}| Select-Object -first 1).Name
if($odm -ne "" -AND $odm -ne $null){
    $loandata = $([xml](Get-Content $odm))
    $metadata = ([xml]$($loandata.OverDriveMedia."#cdata-section")).Metadata

    
    <# 
    
    # === These are not used in the current implementation of the booksonic server === #
    
    $title = $metadata.SortTitle
    $publisher = $metadata.Publisher
    $author = Convert-ForEachData -data $metadata.Creators.Creator -strPrepend " & " -lenRemove 3 -where { $_.role -eq "Author" }
    $genres = Convert-ForEachData -data $metadata.subjects.subject -strPrepend "," -lenRemove 1
    $language = Convert-ForEachData -data $metadata.Languages.Language -strPrepend "," -lenRemove 1
    $returnBook = $loandata.OverDriveMedia.EarlyReturnURL

    #>
    
    $description = $metadata.Description
    $narrator = Convert-ForEachData -data $metadata.Creators.Creator -strPrepend " & " -lenRemove 3 -where { $_.role -eq "Narrator" }
    $coverURL = $metadata.CoverUrl

    $description| Out-File "desc.txt"
    $narrator| Out-File "reader.txt"
    Invoke-Webrequest $coverURL -outFile "cover.jpg"

    Write-Host "Description, narrator (reader) and cover was exported"
}else{
    Write-Warning "The path contains no odm file"
}