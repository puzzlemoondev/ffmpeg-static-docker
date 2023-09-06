#!/usr/bin/env node

import ffmpeg from 'ffmpeg-static'
import { copyFileSync } from 'node:fs'

const [dest] = process.argv.slice(2)

if (!dest) {
  throw new Error('no destination provided')
}

if (!ffmpeg) {
  throw new Error('empty ffmpeg path')
}

copyFileSync(ffmpeg, dest)
