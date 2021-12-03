//
//  Player.swift
//  AppleMusic
//
//  Created by MAC on 05.10.2021.
//

import SwiftUI

struct PlayerView: View {
    var animation: Namespace.ID
    @Binding var expand: Bool
    @State var showDetails = false
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 30 : 0, height: expand ? 6 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 50 : 0)
            HStack {
                if expand {Spacer(minLength: 0)}
                Image("картинка")
                    .resizable()
                    .frame(width: expand ? height : 40, height: expand ? height : 40)
                    .scaledToFit()
                    .cornerRadius(7)
                if !expand {
                    Text("Justin Bieber - Peaches")
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                Spacer(minLength: 0)
                if !expand {
                    Button(action: {
                        self.showDetails.toggle()
                    }, label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 18, height: 18)
                            .scaledToFit()
                    })
                    Spacer()
                        .frame(width: 13)
                    Button(action: {
                        self.showDetails.toggle()
                    }, label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 25, height: 20)
                            .scaledToFit()
                    })
                    .padding(5)
                }}
                .padding()
            VStack {
                if expand {
                    Spacer(minLength: 0)
                        .frame(height: 60)
                    HStack(spacing: 190) {
                        VStack(alignment: .leading) {
                            Text("Peaches")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Text("Justin Bieber")
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .font(.system(size: 23))
                                .matchedGeometryEffect(id: "Label", in: animation)
                        }
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis.circle.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 30))
                        })
                    }
                    HStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 7, height: 7)
                            .offset(x: 28)
                        Capsule()
                            .fill(Color.gray)
                            .frame(height: 4)
                            .padding(.leading, 20)
                            .padding(.trailing, 26)
                        
                    }
                    HStack(spacing: 310) {
                        Text("0:00")
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                            .fontWeight(.regular)
                        Text("-4:12")
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                            .fontWeight(.regular)
                    }
                    Spacer()
                        .frame(height: 45)
                    HStack(spacing: 50) {
                        Button(action: {}, label: {
                            Image(systemName: "backward.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "play.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.primary)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "forward.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                        })
                    }
                    Spacer(minLength: 0)
                        .frame(height: 35)
                    HStack(spacing: 15) {
                        Image(systemName: "speaker.1.fill")
                            .padding(.leading, 7)
                        Slider(value: $volume)
                        Image(systemName: "speaker.wave.2.fill")
                            .padding(.trailing, 7)
                    }.padding()
                    HStack(spacing: 70) {
                        Button(action: {}, label: {
                            Image(systemName: "ellipses.bubble")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "airplayaudio")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "list.dash")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                    }
                    .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
                }
                Spacer(minLength: 0)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        
        .frame(maxHeight: expand ?.infinity : 70)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }.onTapGesture(count: 2) {
                withAnimation(.spring()){expand = true}
            }
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value) {
        
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value) {
        
        withAnimation(.interactiveSpring(response: 0.2, dampingFraction: 0.95, blendDuration: 0.95)) {
            
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}
