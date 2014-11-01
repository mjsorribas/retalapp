
.state('app.playlists', {
  url: "/playlists",
  views: {
    'menuContent' :{
      templateUrl: "js/playlist/views/playlists.html",
      controller: 'PlaylistsCtrl'
    }
  }
})

.state('app.single', {
  url: "/playlists/:playlistId",
  views: {
    'menuContent' :{
      templateUrl: "js/playlist/views/playlist.html",
      controller: 'PlaylistCtrl'
    }
  }
})