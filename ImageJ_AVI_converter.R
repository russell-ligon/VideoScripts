












clip.start<-0 #where we want to the output clip to start, from the source (in.file) video
dur<-600 #duration of output video, in seconds

in.file ="C:\\Users\\Rusty\\Amazon Drive\\MICE\\Thermal\\Next\\Caitlin\\RUSTY\\RUSTY\\S1_TerrTrial_NY2-118_S-S_072718_MB1_trim.avi"
out.file="C:\\Users\\Rusty\\Amazon Drive\\MICE\\Thermal\\Next\\Caitlin\\RUSTY\\RUSTY\\XXX1201-1800.avi"


cmd.y = paste(
  "-y", # overwrite
  "-ss", clip.start, # start time
  "-t", dur, # duration
  "-i", shQuote(in.file),# input filepath with quotes
  #"-c copy", # copy to save processing time
  "-vcodec rawvideo",
  shQuote(out.file)
  # output filepath with quotes
)


system2("C:\\Program Files\\ffmpeg\\bin\\ffmpeg.exe", cmd.y, stdout = TRUE)
