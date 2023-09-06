import ffmpeg from 'ffmpeg-static'
import { copyFileSync } from 'node:fs'

if (ffmpeg) {
  copyFileSync(ffmpeg, '/ffmpeg')
} else {
  throw new Error('empty ffmpeg path')
}
