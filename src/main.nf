#!/usr/bin/env nextflow

/*
WGS Structural Variations Pipeline
*/


// 0. Preflight checks

if (params.help) {
    usage_message()
    exit 1
}

if (!params.bamfile) {
    log.info 'ERROR: You need to specify a bamfile, see --help for more information'
    exit 1
}

bamfile = file(params.bamfile)

if (! bamfile.exists()) {
    log.info "ERROR: The bamfile, '$params.bamfile', does not exist"
    exit 1
}

def usage_message() {
    log.info ''
    log.info 'Usage:'
    log.info '    nextflow main.nf --bamfile <bamfile> [more options]'
    log.info ''
    log.info 'Options:'
    log.info '    --help     Show this message and exit'
    log.info '    --bamfile  Input bamfile'
    log.info ''
}
