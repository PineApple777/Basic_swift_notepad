//
//  DataCenter.swift
//  MeetingRooms
//
//  Created by 정선욱 on 2017. 4. 6..
//  Copyright © 2017년 정선욱. All rights reserved.
//

import Foundation

let dataCenter:DataCenter = DataCenter()

class DataCenter {
    var branches:[Branch] = []
    
    init(){
        let banksyRoom = MeetingRoom(name: "Banksy", capacity: 4)
        let kahloRoom = MeetingRoom(name: "kahlo", capacity: 8)
        let riveraRoom = MeetingRoom(name: "Rivera", capacity: 8)
        let PicassoRoom = MeetingRoom(name: "Picasso", capacity: 10)
        
        let vehicleSerive = Service(name: "차량예약")
        let meetingRoomSerive = Service(name: "회의실예약")
        let visitorSerive = Service(name: "방문자예약")
        let deskSerive = Service(name: "데스크예약")
        meetingRoomSerive.items  = [banksyRoom, kahloRoom, riveraRoom, PicassoRoom]
        
        let pangyoBranch = Branch(name: "판교점")
        let samsungBranch = Branch(name: "삼성점")
        let yeaksamBranch = Branch(name: "역삼점")
        let sindorimBranch = Branch(name: "신림점")
        let songdoBranch = Branch(name: "송도점")
        let anamBranch = Branch(name: "안암점")
        pangyoBranch.service = [vehicleSerive, meetingRoomSerive, visitorSerive, deskSerive]
    
        branches += [pangyoBranch ,samsungBranch, yeaksamBranch, sindorimBranch,songdoBranch,anamBranch]
    }
    
}

class Branch {
    let name:String
    var service:[Service]?
    
    init (name:String){
        self.name = name
    }
}

class Service{
    let name:String
    var items:[MeetingRoom]?
    
    init(name:String){
        self.name = name
    }
}

class MeetingRoom {
    let name:String
    var capacity:Int
    
    init(name:String, capacity:Int){
        self.name = name
        self.capacity = capacity
    }
}
