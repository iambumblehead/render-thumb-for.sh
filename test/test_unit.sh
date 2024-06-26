#!/usr/bin/env bash
# shellcheck disable=2317,2154
#
# bash_unit test/test_core.sh

test_wh_scaled_get_scales_down_larger_dimensions () {
    assert_equals "480x480" "$(wh_scaled_get "1000x1000" "640x480")" \
                  "should scale down larger dimensions"
}

test_wh_identify_get_returns_WxH () {
    assert_equals "512x512" "$(img_wh_identify_get ./Guix_logo.png)" \
                  "should return \"WxH\" dimensions"
}

test_wh_exiftool_get_returns_WxH () {
    assert_equals "512x512" "$(img_wh_exiftool_get ./Guix_logo.png)" \
                  "should return \"WxH\" dimensions"
}

test_wh_get_returns_WxH () {
    assert_equals "512x512" "$(img_wh_get ./Guix_logo.png)" \
                  "should return \"WxH\" dimensions"
}

test_image_display_format_get () {
    sessstr_KITTY="displayformat=KITTY"
    sessstr_SIXEL="displayformat=SIXEL"
    sessstr_NONE="displayformat=NONE"

    assert_equals "KITTY" "$(image_display_format_get $sessstr_KITTY)" \
                  "should return displayformat from sess string, KITTY"
    assert_equals "SIXEL" "$(image_display_format_get $sessstr_SIXEL)" \
                  "should return displayformat from sess string, SIXEL"
    assert_equals "NONE" "$(image_display_format_get $sessstr_NONE)" \
                  "should return displayformat from sess string, NONE"
}

test_zip_read_file () {
    filepath_not_exist="./path/not/exist.xml"
    zippath_not_exist="./path/not/exist.zip"

    assert_fail "$(zip_read_file "$filepath_not_exist" "$zippath_not_exist")" \
                "should fail if zippath does not exist"
}

test_zip_read_file () {
    filepath_container="META-INF/container.xml"
    zippath_testepub="./asset/test.epub"

    # <container
    #   version="1.0"
    #   xmlns="urn:oasis:names:tc:opendocument:xmlns:container" >
    #   <rootfiles>
    #     <rootfile
    #       full-path="OEBPS/content.opf"
    #       media-type="application/oebps-package+xml" />
    #   </rootfiles>
    # </container>
    container=$(zip_read_file "$zippath_testepub" "$filepath_container")
    containerurn="urn:oasis:names:tc:opendocument:xmlns:container"

    assert_matches "$containerurn" "$container"
}

test_zip_move_file_out () {
    filepath_container="META-INF/container.xml"
    zippath_testepub="./asset/test.epub"
    filepath_containeroutdir="./asset-out/"
    filepath_containerout="${filepath_containeroutdir}container.xml"

    # <container
    #   version="1.0"
    #   xmlns="urn:oasis:names:tc:opendocument:xmlns:container" >
    #   <rootfiles>
    #     <rootfile
    #       full-path="OEBPS/content.opf"
    #       media-type="application/oebps-package+xml" />
    #   </rootfiles>
    # </container>
    zip_move_file_out \
        "$zippath_testepub" \
        "$filepath_container" \
        "$filepath_containeroutdir"

    container=$(cat "$filepath_containerout")
    containerurn="urn:oasis:names:tc:opendocument:xmlns:container"

    assert_matches "$containerurn" "$container"
}

test_thumb_create_from_pdf_magcick () {
    pdfpath_inpdf="./asset/test.640x480.pdf"
    pdfpath_outimg=$(thumb_create_from_pdf_magick "$pdfpath_inpdf" "400x400")

    assert_matches "pdf.400x400.jpg$" "$pdfpath_outimg" \
                   "should use naming pattern for generated file"
    assert_matches "$([[ -f "$pdfpath_outimg" ]] && echo "true")" "true" \
                   "should generate image file"
}

test_thumb_create_from_video () {
    videopath_inmp4="./asset/test.640x480.mp4"
    videopath_outimg=$(thumb_create_from_video "$videopath_inmp4" "400x400")

    assert_matches "video.[[:digit:]]+[x][[:digit:]]+.png$" "$videopath_outimg" \
                   "should use naming pattern for generated file"
    assert_matches "$([[ -f "$videopath_outimg" ]] && echo "true")" "true" \
                   "should generate image file"
}

test_thumb_create_from_font () {
    fontpath_inmp4="./asset/OpenComicFont.ttf"
    fontpath_outimg=$(thumb_create_from_font "$fontpath_inmp4" "400x400")

    assert_matches "font.[[:digit:]]+[x][[:digit:]]+.png$" "$fontpath_outimg" \
                   "should use naming pattern for generated file"
    assert_matches "$([[ -f "$fontpath_outimg" ]] && echo "true")" "true" \
                   "should generate image file"
}

test_thumb_create_from_audio () {
    audioname="gutenberg.The-Whale-Catchers.Roger-McGuinn-cover-500x500.mp3"
    audiopath_inmp4="./asset/$audioname"
    audiopath_outimg=$(thumb_create_from_audio "$audiopath_inmp4" "400x400")

    assert_matches "audio.[[:digit:]]+[x][[:digit:]]+.png$" "$audiopath_outimg" \
                   "should use naming pattern for generated file"
    assert_matches "$([[ -f "$audiopath_outimg" ]] && echo "true")" "true" \
                   "should generate image file"
}

setup_suite() {
    source ../thu.sh

    cachedir_calibrate "$cachedir" "$cache"
}
