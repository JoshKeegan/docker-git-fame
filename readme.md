# Docker Image for [Git Fame](https://github.com/oleander/git-fame-rb)
A docker image for `git-fame`.

## Usage
Run by going to the root of the git repo you want to analyse and run:
```bash
docker run --rm -v ${PWD}:/src joshkeegan/git-fame
```

If you want to use arguments, simply supply them at the end of the command, e.g.
```bash
docker run --rm -v ${PWD}:/src joshkeegan/git-fame --by-type
```

If running on windows via mingw, disable path conversions for the volume mount to work:
```bash
export MSYS_NO_PATHCONV=1 && docker run --rm -v ${PWD}:/src joshkeegan/git-fame
```
...and make sure the docker VM has access to the drive you're volume mounting.