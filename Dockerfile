FROM alpine

RUN apk update
RUN apk add alpine-sdk git ghc cabal ca-certificates
RUN cabal update
RUN cabal install tasty tasty-hunit

WORKDIR /app

COPY src /app/src/
COPY test /app/test/
COPY lua-5.3.4 /app/lua-5.3.4/
COPY lua-musl.cabal Setup.hs /app/

RUN cabal configure --enable-tests && cabal build