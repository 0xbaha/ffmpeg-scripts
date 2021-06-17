# Audio to Video Converter 

Convert audio files to video with image.

## How to Use

1. Download [FFmpeg](https://ffmpeg.org/download.html).
2. Edit environment variables.
3. Store image and audio files in same folder of the scripts.
4. Run the script.

## Usage

Here is how to use the script.

```
a2v.bat <arg1> <arg2> <arg3>
```

- `arg1` = if you want to use same image, use argument `t` (template), or if each audio have certain image, use argument `u` (unique)
- `arg2` = source type (`mp3`, `mpeg`)
- `arg3` = image type (`jpg`, `png`)

### Example

Here some examples the usage of the script.

```
a2v.bat t mp3 png
```

```
a2v.bat u mpeg jpg
```

## Testing

The script has been tested on Windows 10:

- To convert MP3 files to MP4 files, and accepted on YouTube upload.
- To convert MPEG files to MP4 files, and accepted on YouTube upload.

## References
- [Ref1](https://stackoverflow.com/a/26151984)
- [Ref2](https://superuser.com/a/1041818)
