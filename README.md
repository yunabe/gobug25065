# gobug25065
A repository to reproduce https://github.com/golang/go/issues/25065

# Usage
Make sure `$GOPATH` is set properly. Then, run the following commands.

```shell
go get -d github.com/yunabe/gobug25065
$(go env GOPATH)/src/github.com/yunabe/gobug25065/run.sh
```

# Note
The error is gone if we remove `fmt.Println((*myType).A)` from `src.go`.
