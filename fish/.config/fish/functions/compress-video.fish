# compress videos using ffmpeg
function compress-video --argument input output
    if not count $argv >/dev/null
        compress-video -h
        return
    end

    argparse h/help -- $argv
    or return

    if set -ql _flag_help
        echo "compress-video [-h|--help] <input.mp4> <output.mp4>"
        return 0
    end

    set -q output[1]
    or set output "output.mp4"

    ffmpeg -y -i $input -c:v libx264 -preset medium -b:v 555k -pass 1 -c:a libfdk_aac -b:a 128k -f mp4 /dev/null &&
        ffmpeg -i $input -c:v libx264 -preset medium -b:v 555k -pass 2 -c:a libfdk_aac -b:a 128k $output
end
