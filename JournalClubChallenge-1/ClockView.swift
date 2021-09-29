//
//  ClockView.swift
//  JournalClubChallenge-1
//
//  Created by Michael Craun on 9/29/21.
//

import SwiftUI

struct ClockView: View {
    
    var body: some View {
    
        Circle()
            .foregroundColor(Color(.systemGray2).opacity(0.5))
            .overlay {
                    
                HStack {
                    
                    Text("6") + Text("PM")
                        .font(.caption2.bold())
                    
                    Spacer()
                    
                    Text("6") + Text("AM")
                        .font(.caption2.bold())
                    
                }
                .padding()
                
            }
            .overlay {
                
                VStack {
                    
                    Text("12") + Text("AM")
                        .font(.caption2.bold())
                    
                    Spacer()
                    
                    Text("12") + Text("PM")
                        .font(.caption2.bold())
                    
                }
                .padding()
                
            }
            .overlay {
                
                HStack {
                    
                    VStack {
                        
                        Text("8")
                        
                        Spacer()
                        
                        Text("4")
                        
                    }
                    
                    Spacer()
                    
                }
                .padding(.vertical, 60)
                .offset(x: 25)
                .foregroundColor(.primary.opacity(0.5))
                
            }
            .overlay {
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("4")
                        
                        Spacer()
                        
                        Text("8")
                        
                    }
                    .padding(.vertical, 60)
                    .offset(x: -25)
                    .foregroundColor(.primary.opacity(0.5))
                    
                }
                
            }
            .overlay {
                
                VStack {
                    
                    Text("10")
                    
                    Spacer()
                    
                    Text("2")
                    
                }
                .padding(.vertical, 30)
                .offset(x: -50)
                .foregroundColor(.primary.opacity(0.5))
                
            }
            .overlay {
                
                VStack {
                    
                    Text("2")
                    
                    Spacer()
                    
                    Text("10")
                    
                }
                .padding(.vertical, 30)
                .offset(x: 50)
                .foregroundColor(.primary.opacity(0.5))
                
            }
            .overlay {
                
                VStack {
                    
                    Image(systemName: "sparkles")
                        .foregroundColor(.cyan)
                    
                    Spacer()
                    
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    
                }
                .padding(.vertical, 40)
                
            }
            .font(.callout.bold())
            .foregroundColor(.primary)
    
    }
    
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
