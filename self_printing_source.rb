#reads own source-code... if you want a laugh use it in Repl
#combining this with eval might be worrisome
puts $><<IO.read($0)