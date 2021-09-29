//
//  ContentView.swift
//  JournalClubChallenge-1
//
//  Created by Michael Craun on 9/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var start: Date = Date()
    @State private var end: Date = Date().addingTimeInterval(7.75 * 60 * 60)
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }
    private var distance: TimeInterval {
        return start.distance(to: end)
    }
    private var distanceString: String {
        let minutes = Int(distance.remainder(dividingBy: 60 * 60))
        if minutes == 0 {
            return "\(Int(distance / (60 * 60))) hr"
        }
        return "\(Int(distance / (60 * 60))) hr, \(minutes) m"
    }
    
    var body: some View {
        
        VStack {
            
            Text("Next Wake Up Only")
                .font(.title.bold())
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    VStack(spacing: 2) {
                        
                        (Text(Image(systemName: "bed.double.fill")) + Text(" BEDTIME"))
                            .font(.callout.bold())
                            .foregroundColor(.primary.opacity(0.7))
                        
                        Text(start, formatter: dateFormatter)
                            .font(.title2.bold())
                        
                        Text("Today")
                            .font(.footnote)
                            .foregroundColor(.primary.opacity(0.7))
                        
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 2) {
                        
                        (Text(Image(systemName: "bell.fill")) + Text(" WAKE UP"))
                            .font(.callout.bold())
                            .foregroundColor(.primary.opacity(0.7))
                        
                        Text(end, formatter: dateFormatter)
                            .font(.title2.bold())
                        
                        Text("Tomorrow")
                            .font(.footnote)
                            .foregroundColor(.primary.opacity(0.7))
                        
                    }
                    
                    Spacer()
                    
                }
                .padding()
                
                TrackerView(start: $start, end: $end)
                    .scaledToFit()
                    .padding(.horizontal)
                
                VStack {
                    
                    Text(distanceString)
                        .font(.title2.bold())
                    
                    Text("This schedule meets your sleep goal.")
                    
                }
                .padding()
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .padding()
                    .foregroundColor(Color(.systemGray2).opacity(0.5))
            )
            
            Spacer()
            
        }
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
