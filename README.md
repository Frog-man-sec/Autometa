<img src='https://repository-images.githubusercontent.com/744391632/654b52a4-f02a-4183-ac25-5304fb78531f'>

# *Autometa*: Collection of automation tools
> **NOTE**
> > I made these scripts to automate my tasks. So, if you want to use them, I would suggest you to **customize** these   `scripts` as well as `files & folders` properly.

----
### `recon` script
First I will talk about the script `recon`. This scripts runs some common yet effective recon tools to find subdomains.

For each tool, it stores the results in seperate files.

After that it will combine all the found subdomain and trim out the duplicates.
>> Note: *it will take input from a file called **scopes.txt***
#### Modification
- Create a directory called `/automate` in your `/home/<user>` directory.
- Put your script in that directory.
- Put your urls into a text file called `scopes.txt` and put it in the same directory as the script.
- **scopes.txt** should have clean links. **e.g**: 
  - example.com
  - helloworld.xyz
  - newsite.co
- Don't put `http://` or `https://` in with the link.


