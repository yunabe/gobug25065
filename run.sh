pkgdir=$(go env GOPATH)/src/github.com/yunabe/gobug25065/pkg
rm -rf $pkgdir

echo '## Building libstd.so ##'
go install -buildmode=shared -pkgdir $pkgdir std
echo '## Building gobug25065 ##'
go install -v -x -buildmode=shared -linkshared -pkgdir $pkgdir github.com/yunabe/gobug25065

if [ $? -eq 0 ]; then
    echo '## Show stats ##'
    ls -lah $pkgdir/*.so
    ldd $pkgdir/*.so
else
    echo FAIL
fi
rm -rf $pkgdir
