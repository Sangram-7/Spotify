resource "spotify_playlist" "Bollywood" {
  name        = "Bollywood"
  description = "This playlist was created by Terraform"

  tracks = ["1PDREqVNvmphIoNac3Vz8c"]
}

data "spotify_search_track" "YoYoHoneySingh" {
  artist = "Yo Yo Honey Singh"
}

resource "spotify_playlist" "HoneySingh" {
  name = "Honey Singh"
  tracks = [data.spotify_search_track.YoYoHoneySingh.tracks[0].id,
  data.spotify_search_track.YoYoHoneySingh.tracks[6].id,
  data.spotify_search_track.YoYoHoneySingh.tracks[9].id
  ]
}