//
//  TimeArc.swift
//  JournalClubChallenge-1
//
//  Created by Michael Craun on 9/29/21.
//

import SwiftUI

struct TimeArc: Shape {
    
    /* 00:00 is -90
     * 06:00 is 0
     * 12:00 is 90
     * 18:00 is 180?
     */
    
    @Binding var start: Date
    @Binding var end: Date
    private var endAngle: Angle {
        let startOfDay = Calendar.current.startOfDay(for: start)
        print(startOfDay, start)
        let diff = start.distance(to: startOfDay)
        print("start", diff / 180)
        return .degrees((diff / 180) - 90)
    }
    private var startAngle: Angle {
        let startOfNextDay = Calendar.current.startOfDay(for: end)
        print(startOfNextDay, end)
        let diff = startOfNextDay.distance(to: end)
        print("end", diff / 180)
        return .degrees((diff / 180) - 90)
    }
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.addArc(
            center: CGPoint(x: rect.width / 2, y: rect.height / 2),
            radius: rect.width / 2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false)
        
        return path.strokedPath(.init(lineWidth: 30, lineCap: .round))
        
    }
    
}

struct TimeArc_Previews: PreviewProvider {
    static var previews: some View {
        TimeArc(
            start: .constant(Date()),
            end: .constant(Date().addingTimeInterval(8 * 60 * 60)))
    }
}
