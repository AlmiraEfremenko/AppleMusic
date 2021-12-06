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
    var height = UIScreen.main.bounds.height / MetricPlayerView.heightScreen
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume: CGFloat = MetricPlayerView.volume
    @State var offset: CGFloat = MetricPlayerView.offset
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? MetricPlayerView.widthFrameCapsule : MetricPlayerView.anotherParametr, height: expand ? MetricPlayerView.heightFrameCapsule : MetricPlayerView.anotherParametr)
                .opacity(Double(expand ? MetricPlayerView.opacityCapsule : MetricPlayerView.anotherParametr))
                .padding(.top, expand ? safeArea?.top : MetricPlayerView.anotherParametr)
                .padding(.vertical, expand ? MetricPlayerView.paddingCapsule : MetricPlayerView.anotherParametr)
            HStack {
                if expand {Spacer(minLength: MetricPlayerView.spacerMinLenght)}
                Image("картинка")
                    .resizable()
                    .frame(width: expand ? height : MetricPlayerView.widthImage, height: expand ? height : MetricPlayerView.heightImage)
                    .scaledToFit()
                    .cornerRadius(MetricPlayerView.cornerRadiusImage)
                if !expand {
                    Text("Justin Bieber - Peaches")
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                Spacer(minLength: MetricPlayerView.spacerMinLenght)
                if !expand {
                    Button(action: {
                        self.showDetails.toggle()
                    }, label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: MetricPlayerView.widthImagePlayFill, height: MetricPlayerView.heightImagePlayFill)
                            .scaledToFit()
                    })
                    Spacer()
                        .frame(width: MetricPlayerView.widthFrameSpacer)
                    Button(action: {
                        self.showDetails.toggle()
                    }, label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: MetricPlayerView.widthImageForwardFill, height: MetricPlayerView.heightImageForwardFill)
                            .scaledToFit()
                    })
                    .padding(MetricPlayerView.padding)
                }}
                .padding()
            VStack {
                if expand {
                    Spacer(minLength: MetricPlayerView.spacerMinLenght)
                        .frame(height: MetricPlayerView.spacerFrameHeight)
                    HStack(spacing: MetricPlayerView.spacingHStack) {
                        VStack(alignment: .leading) {
                            Text("Peaches")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .font(.system(size: MetricPlayerView.sizeFontTextPeaches))
                            Text("Justin Bieber")
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .font(.system(size: MetricPlayerView.sizeFontTextJustin))
                                .matchedGeometryEffect(id: "Label", in: animation)
                        }
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "ellipsis.circle.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: MetricPlayerView.sizeFontImageEllipsis))
                        })
                    }
                    HStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: MetricPlayerView.sizeCircle, height: MetricPlayerView.sizeCircle)
                            .offset(x: MetricPlayerView.offsetCircle)
                        Capsule()
                            .fill(Color.gray)
                            .frame(height: MetricPlayerView.heightCapsule)
                            .padding(.leading, MetricPlayerView.paddingCapsuleLeading)
                            .padding(.trailing, MetricPlayerView.paddingCapsuleTrailing)
                        
                    }
                    HStack(spacing: MetricPlayerView.spacingHStackText) {
                        Text("0:00")
                            .foregroundColor(.gray)
                            .font(.system(size: MetricPlayerView.sizeFontText))
                            .fontWeight(.regular)
                        Text("-4:12")
                            .foregroundColor(.gray)
                            .font(.system(size: MetricPlayerView.sizeFontText))
                            .fontWeight(.regular)
                    }
                    Spacer()
                        .frame(height: MetricPlayerView.frameSpacer)
                    HStack(spacing: MetricPlayerView.spacingHStackPlay) {
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "backward.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                        })
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "play.fill")
                                .font(.system(size: MetricPlayerView.widthImage))
                                .foregroundColor(.primary)
                        })
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "forward.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                        })
                    }
                    Spacer(minLength: MetricPlayerView.spacerMinLenght)
                        .frame(height: MetricPlayerView.spacerFrameHeightSpeaker)
                    HStack(spacing: MetricPlayerView.spacinhHStackSpeaker) {
                        Image(systemName: "speaker.1.fill")
                            .padding(.leading, MetricPlayerView.paddingImage)
                        Slider(value: $volume)
                        Image(systemName: "speaker.wave.2.fill")
                            .padding(.trailing, MetricPlayerView.paddingImage)
                    }.padding()
                    HStack(spacing: MetricPlayerView.spacingTabBarPlayer) {
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "ellipses.bubble")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "airplayaudio")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        Button(action: {
                            print("Нажата кнопка")
                        }, label: {
                            Image(systemName: "list.dash")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                    }
                    .padding(.bottom, safeArea?.bottom == MetricPlayerView.anotherParametr ? MetricPlayerView.paddingSafeArea : safeArea?.bottom)
                }
                Spacer(minLength: MetricPlayerView.spacerMinLenght)
            }
            .frame(height: expand ? nil : MetricPlayerView.anotherParametr)
            .opacity(Double(expand ? MetricPlayerView.opacityCapsule : MetricPlayerView.anotherParametr))
        }
        
        .frame(maxHeight: expand ?.infinity : MetricPlayerView.maxHeightFrame)
        .background(
            VStack(spacing: MetricPlayerView.spacerMinLenght) {
                BlurView()
                Divider()
            }.onTapGesture(count: Int(MetricPlayerView.count)) {
                withAnimation(.spring()){expand = true}
            }
        )
        .cornerRadius(expand ? MetricPlayerView.cornerRaduis : MetricPlayerView.anotherParametr)
        .offset(y: expand ? MetricPlayerView.anotherParametr : MetricPlayerView.offsetView)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value) {
        
        if value.translation.height > MetricPlayerView.anotherParametr && expand {
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value) {
        
        withAnimation(.interactiveSpring(response: Double(MetricPlayerView.response), dampingFraction: Double(MetricPlayerView.dampingFraction), blendDuration: Double(MetricPlayerView.blendDuration))) {
            
            if value.translation.height > height {
                expand = false
            }
            offset = MetricPlayerView.anotherParametr
        }
    }
}

struct MetricPlayerView {
    
    static let heightScreen: CGFloat = 3
    static let volume: CGFloat = 0
    static let offset: CGFloat = 0
    static let widthFrameCapsule: CGFloat = 30
    static let heightFrameCapsule: CGFloat = 6
    static let anotherParametr: CGFloat = 0
    static let opacityCapsule: CGFloat = 1
    static let paddingCapsule: CGFloat = 50
    static let spacerMinLenght: CGFloat = 0
    static let widthImage: CGFloat = 40
    static let heightImage: CGFloat = 40
    static let cornerRadiusImage: CGFloat = 7
    static let widthImagePlayFill: CGFloat = 18
    static let heightImagePlayFill: CGFloat = 18
    static let widthFrameSpacer: CGFloat = 13
    static let widthImageForwardFill: CGFloat = 25
    static let heightImageForwardFill: CGFloat = 20
    static let padding: CGFloat = 5
    static let spacerFrameHeight: CGFloat = 60
    static let spacingHStack: CGFloat = 190
    static let sizeFontTextPeaches: CGFloat = 25
    static let sizeFontTextJustin: CGFloat = 23
    static let sizeFontImageEllipsis: CGFloat = 30
    static let sizeCircle: CGFloat = 7
    static let offsetCircle: CGFloat = 28
    static let heightCapsule: CGFloat = 4
    static let paddingCapsuleLeading: CGFloat = 20
    static let paddingCapsuleTrailing: CGFloat = 26
    static let spacingHStackText: CGFloat = 310
    static let sizeFontText: CGFloat = 10
    static let frameSpacer: CGFloat = 45
    static let spacingHStackPlay: CGFloat = 50
    static let spacerFrameHeightSpeaker: CGFloat = 35
    static let spacinhHStackSpeaker: CGFloat = 15
    static let paddingImage: CGFloat = 7
    static let spacingTabBarPlayer: CGFloat = 70
    static let paddingSafeArea: CGFloat = 15
    static let maxHeightFrame: CGFloat = 70
    static let count: CGFloat = 2
    static let cornerRaduis: CGFloat = 20
    static let offsetView: CGFloat = -48
    static let response: CGFloat = 0.2
    static let dampingFraction: CGFloat = 0.95
    static let blendDuration: CGFloat = 0.95
}
