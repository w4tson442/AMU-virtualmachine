#! /usr/bin/python

import cgi, os, sys

def index():
    start_response('200 OK', [('Content-Type', 'text/html')])
    yeild '<h1> Insert Title Here </h1>'

WSGIServer(index).run()
