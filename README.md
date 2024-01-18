<img src='https://repository-images.githubusercontent.com/744391632/654b52a4-f02a-4183-ac25-5304fb78531f'>

# *Autometa*: Collection of automation scripts
> **NOTE**
> > I made these scripts to automate my tasks. So, if you want to use them, I would suggest you to **customize** these   `scripts` as well as `files & folders` properly.

----
### `recon` script
First I will talk about the script `recon`. This scripts runs some common yet effective recon tools to find subdomains.

For each tool, it stores the results in seperate files.

After that it will combine all the found subdomain and trim out the duplicates.
#### Task Process
`recon` script takes sub domain from a text file called **scopes.txt**. Then it uses the following tools to enumerate subdomains for that domain. <br>
**Tools**
- amass
- subfinder
- assetfinder
- crt_org.sh

Meanwhile it stores found subdomains into text files named after the tool that is used to enumerate them.

After completing the enumeration, it marges all the subdomain and put the unique ones into a file called **finalDomains.txt**



>> Note: *due to the reson that amass takes a lot of time (**as I don't have a VPS nor a fast internet connection**) I've put **`timeout`** function to terminate after certain time. You can remove it if you want*
#### Modification
- Create a directory called `/automate` in your `/home/<user>` directory.
- Put your script in that directory.
- Put your urls into a text file called `scopes.txt` and put it in the same directory as the script.
- **scopes.txt** should have clean links. **e.g**: 
  - example.com
  - helloworld.xyz
  - newsite.co
- Don't put `http://` or `https://` before the link. **e.g**:
  
  - ~~http://example.com~~
  - ~~https://helloworld.xyz~~
  - ~~http://newsite.com~~


