//
//  TrackerView.swift
//  JournalClubChallenge-1
//
//  Created by Michael Craun on 9/29/21.
//

import SwiftUI

struct TrackerView: View {
    
    @Binding var start: Date
    @Binding var end: Date
    
    var body: some View {
    
        Circle()
            .strokeBorder(lineWidth: 40)
            .foregroundColor(.black)
            .overlay {
                
                TimeArc(start: $start, end: $end)
                    .padding(20)
                    .foregroundColor(Color(.systemGray2).opacity(0.5))
                
            }
            .overlay {
                
                ClockView()
                    .padding(40)
                
            }
    
    }
    
}

struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView(start: .constant(Date().addingTimeInterval(-(8*60*60))), end: .constant(Date()))
    }
}
