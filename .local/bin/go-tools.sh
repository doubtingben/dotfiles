#!/bin/bash

set -eu

declare -a GOLANG_TOOLS=("golang.org/x/tools/cmd/..."
                        "github.com/rogpeppe/godef/..."
                        "github.com/nsf/gocode"
                        "golang.org/x/tools/cmd/goimports"
                        "golang.org/x/tools/cmd/guru"
                        "github.com/dougm/goflymake"
			"github.com/golang/dep/cmd/dep"
                       )

for tool in ${GOLANG_TOOLS[@]}; do
    go get -uv ${tool}
done    
