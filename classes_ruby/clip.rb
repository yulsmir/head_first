module AcceptComments
  def comments
    @comments ||= []
  end
  def add_comment(comment)
    comments.push(comment)
  end
end

class Clip
  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  include AcceptComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptComments
  def initialize
    @format = 'JPEG'
  end
end

video = Video.new
video.add_comment("Cool video!")
video.add_comment("Strange ending...")

song = Song.new
song.add_comment('What a cool song!')

photo = Photo.new
photo.add_comment('Awesome photo!')

p video.comments, song.comments, photo.comments
