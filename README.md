# Booksonic Export Booksonic Metadata from ODM Files
This code has not been tested much yet. It "should" not be able to do any harm if something goes wrong but use at your own risk

I have only tested this script with Windows powershell but I think it should work fine with Powershell Core as well meaning you can probably run it on Linux.

I might write a GUI for this later if there is a demand for it. Once Booksonic Air is fully released I plan on having that support odm files natively.


What is Booksonic?
-----------------

Booksonic is a platform for accessing the audibooks you own wherever you are.
At the moment the platform consists of

 - **[Booksonic Air](https://github.com/popeen/Booksonic-Air)** - A server for streaming your audiobooks, successor to the original Booksonic server. Based on Airsonic.
 - **[Booksonic App](https://github.com/popeen/Booksonic-App)** - An android app for connection to Booksonic servers. Based on DSub
 - **[Download Librivox top 100](https://github.com/popeen/Download-Librivox-Top-100)** - A script for downloading the most popular audiobooks from Librivox
 
**Upcoming:**
 - **Booksonic Bridge** - This is an upcoming serverside software that will allow you to use third party servers like Plex, Emby, Youtube etc. It is currently in closed beta and no timeframe is given.

**Extra tools**
 - **[Booksonic ODM2Meta](https://github.com/popeen/Booksonic-Export-Booksonic-Metadata-from-ODM-Files)** - A script for quickly converting your ODM files to metadata that can be used by Booksonic. In the future this will not be needed as Booksonic will soon support ODM files natively.
 - **[Bulk convert UTF8](https://github.com/popeen/Booksonic-Bulk-convert-to-UTF8)** - A script for bulk conversion of meta files to UTF-8
 - **[Booksonic Library Editor](https://github.com/galacticat/booksonic-library-editor)** - A third party Library editor

While there is no iOS app available (yet) Booksonic fully supports the Subsonic API so you will be able to use it with any app that supports that, you will miss out on some Booksonic specific features but  you will be able to listen without problem.

More information about the project can be found at [booksonic.org](https://booksonic.org)
