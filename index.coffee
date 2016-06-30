meta = require './package.json'


server = ({host, port, script})->
    require('express').post '/update', ->

    router.route('/').post ->
        exec "sh #{script}"
    app.listen port ->
        console.log "server start listenning at #{port}.."

server meta.config
