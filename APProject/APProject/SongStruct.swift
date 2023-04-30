//
//  SongStruct.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/12/23.
//

import Foundation

struct SongStored {
    
    let id: UUID
    var artistName: String
    var songName: String
    var releaseDate: String
    var artworkUrl100: String
    var liked: Bool
    
    init(id: UUID = UUID(), artistName: String, songName: String, releaseDate: String, artworkUrl100: String, liked: Bool) { //initilized the values used in SongStored
        self.id = id
        self.artistName = artistName
        self.songName = songName
        self.releaseDate = releaseDate
        self.artworkUrl100 = artworkUrl100
        self.liked = liked
    }
    
    
    static func songs(filtered: Bool) -> [SongStored]{ //creates the function that rotates through the values in songs which appears in the unfilteredview
        
        var top25Songs: [SongStored] = []
        
        for i in 0...9 {
            let song = SongStored(artistName: artistNameTop25[i], songName: songNameTop25[i], releaseDate: releaseDateTop25[i], artworkUrl100: artworkUrl100Top25[i], liked: false)
            top25Songs.append(song)
        }
        
        return top25Songs
    }
    
    
    static func filter(songs: [SongStored], liked: Bool) -> [SongStored] { //creates the function that filters the songs through the liked bool and the function songs, makes it possible to like a song and then click on a button to view the new filtered view, connects songs with either being liked or untouched 
        
        if liked {
            
            var likedSongs: [SongStored] = []
            
            for song in songs {
                if song.liked == true{
                    likedSongs.append(song)
                }
            }
            return likedSongs
        } else {
            return songs
        }
    }
    

}



let artistNameTop25 = ["Metro Boomin","Drake & 21 Savage","Taylor Swift","Lil Baby","Rod Wave","Babyface Ray","Ivan Cornejo","Finesse2Tymes","SZA","Bad Bunny"];
let songNameTop25 = ["HEROES & VILLAINS (Heroes Version)","Her Loss","Anti-Hero","Real Spill","7 Day Theory","MOB","Está Dañado","Nobody","SOS","Un Verano Sin Ti"];
let releaseDateTop25 = ["2022-12-05","2022-11-04","2022-10-21","2022-10-14","2022-11-18","2022-12-02","2022-12-02","2022-12-02","2022-12-09","2022-05-06","2022-08-12","2022-07-29","2022-12-01","2022-11-25","2022-10-07","2022-06-09","2022-10-28","2022-04-29","2022-12-09","2022-11-11","2022-11-18","2022-11-17","2022-10-21","2021-01-08"];
let artworkUrl100Top25 = ["https://is5-ssl.mzstatic.com/image/thumb/Music112/v4/c3/ef/1d/c3ef1dfc-e1f5-e885-8be7-f3155581ddf8/22UM1IM40165.rgb.jpg/100x100bb.jpg","https://is4-ssl.mzstatic.com/image/thumb/Music112/v4/c7/00/3f/c7003f83-3a43-1201-4aec-41be71ba64c5/22UM1IM29131.rgb.jpg/100x100bb.jpg","https://is4-ssl.mzstatic.com/image/thumb/Music122/v4/59/13/5c/59135ccc-8425-415c-7f89-8aeada60088e/22UM1IM22440.rgb.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/9f/c0/99/9fc09958-180d-e66a-bbf7-9462289435f6/22UM1IM13098.rgb.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/85/9e/82/859e820e-5760-978c-f7dd-e6327372d1cd/196589677426.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music112/v4/01/74/97/017497ff-e6fb-5306-d776-4eba8072be9f/194690957161_cover.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music112/v4/d8/d8/92/d8d8924d-40aa-c9f0-91cd-102c4f65cacc/734126995246.jpg/100x100bb.jpg","https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/ae/06/7a/ae067afa-0725-78e5-c61c-993fcb98cc68/075679712264.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/bd/3b/a9/bd3ba9fb-9609-144f-bcfe-ead67b5f6ab3/196589564931.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music112/v4/3e/04/eb/3e04ebf6-370f-f59d-ec84-2c2643db92f1/196626945068.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/1e/05/87/1e058730-3550-58a0-90a6-dd9bf7c6a9e4/196589330673.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music112/v4/05/05/f3/0505f338-9873-feb4-af7f-27a470405e5f/196589246974.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/c2/48/5a/c2485a96-58d4-5874-c9d6-cf479c06020b/197187400171.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/95/9a/9e/959a9ed7-60d7-fc91-cd51-99d1b5f41737/075679739773.jpg/100x100bb.jpg","https://is4-ssl.mzstatic.com/image/thumb/Music112/v4/6d/1d/e8/6d1de8d2-d45b-309c-e67f-80c895606924/22UM1IM01211.rgb.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/cd/c7/05/cdc7052e-dbd1-d302-adc2-064dc78db743/196589231000.jpg/100x100bb.jpg","https://is4-ssl.mzstatic.com/image/thumb/Music112/v4/00/6b/f0/006bf03e-89be-8e40-4452-4d725109aed5/075679724915.jpg/100x100bb.jpg","https://is1-ssl.mzstatic.com/image/thumb/Music122/v4/c1/27/d1/c127d12a-d259-dbd9-7d02-75056e376fb6/196589131805.jpg/100x100bb.jpg","https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/6b/6b/bf/6b6bbfe5-ead1-c33e-c57e-96a4740762ce/075679715289.jpg/100x100bb.jpg","https://is3-ssl.mzstatic.com/image/thumb/Music122/v4/8c/7c/33/8c7c332c-641f-4b6d-b5b3-b93ef45322e3/22UM1IM13396.rgb.jpg/100x100bb.jpg","https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/13/d0/2a/13d02ad6-c3b5-c2cc-7267-1a5413ad95d6/075679724717.jpg/100x100bb.jpg","https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/13/fe/ee/13feee7f-fcd1-e775-6970-5ee24f7b976d/194690965708_cover.jpg/100x100bb.jpg","https://is4-ssl.mzstatic.com/image/thumb/Music112/v4/12/6d/fa/126dfa1e-fc59-07ae-ef64-cf4484a16187/075679709448.jpg/100x100bb.jpg","https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/10/a2/39/10a239bc-0f25-69d2-52df-b1fe755dcf19/20UM1IM03632.rgb.jpg/100x100bb.jpg"];



