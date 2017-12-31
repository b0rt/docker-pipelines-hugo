*Notice: This repository was created as an example and will most likely not be updated with newer releases of Hugo. Feel free to fork this and make whatever changes you want.*



# hugo for bitbucket pipelines

This is a fork of [karelbemelmans version](https://github.com/karelbemelmans/docker-pipelines-hugo). He uses aws-cli.  
This container uses ncftp to copy files

## Todo

- ~~should execute hugo (container running in bitbucket pipelines)~~
- ~~should be able to copy content recursively from public/ to an FTP drive~~
- add scp functionality / examples

    
### how to debug / extend

```
# you could build the container locally
$ docker build -t hugo-for-pipelines .

# or run run the cloud container in pipelines comparable settings (from your website project)

$ docker run -it --volume=C:\Users\USERNAME\workspace-websites\project-dir:/project-dir --workdir="/project-dir" --memory=4g --memory-swap=4g --memory-swappiness=0 --entrypoint=/bin/bash b0r7/hugo-for-pipelines
```

## MIT License

Copyright 2017 Karel Bemelmans

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
