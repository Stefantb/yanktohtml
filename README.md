yanktohtml
==========

My NVIM v0.4.4-5-g972dd758c did not work super well with this plugin out of the box.
I have the following setting: 'set clipboard^=unnamedplus,unnamed'.

If `:YankToHtml` is called with the unnamed register then the value yanked to it
would clobber the html copied to xclip after the function finished.

Being lazy, I did not want to have to remember to pass a different register when using this function.

The simple solution was to ignore the register argument to the function and try to
use register 'a' (hard coded), restoring it afterwards.


This plugin provides a single function (`:YankToHtml`) which allows you to yank some markdown text
and have it placed on the clipboard as HTML. The "content-type" of the clipboard will be
appropriately set so that pasting applications can intelligently paste the text as richly formatted
text. This is useful, for example, if you want to compose some text in markdown in vim and then
paste it into your email client or word processor as properly formatted text.

![demo](/demo/demo.gif?raw=true)

It relies on `pandoc` and `xclip`, so it'll be easiest to use on Linux-y systems, but you might be able
to get it working on Mac/Windows. Let me know if you do!

See the docs for full usage information.

