import SwiftUI

struct memberInfo: View {
    var member: Member
    @State var animationAmount = 0.0
    var body: some View {
        ScrollView {
            Image(member.photo)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.purple, lineWidth: 5))
                .shadow(color: .purple, radius: 10)
            HStack {
                Spacer()
                VStack {
                    HStack {
                        Button(action: {
                            animationAmount -= 360
                        }, label: {
                            Image("logo")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .shadow(color: .purple, radius: 10)
                                .rotation3DEffect(
                                    .degrees(animationAmount),
                                    axis: (x: 0.0, y: 1.0, z: 0.0)
                                    )
                                .animation(.default)
                        })
                        Spacer()
                        Text(member.name)
                            .fontWeight(.bold)
                            .font(.system(size: 55))                        .shadow(color: .purple, radius: 10)
                            //this makes a text that doesnt fit smaller.
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                        HStack {
                            Spacer()
                            Text("乃木坂46  -")
                            Text(member.ki)
                        }
                        .padding(.bottom, 40)
                    Text(member.info)
                        .font(.system(size: 20))                        .shadow(color: .purple, radius: 10)

                }
                .padding()
            }
            Spacer()
        }
    }
}

struct memberInfo_Previews: PreviewProvider {
    static var previews: some View {
        memberInfo(member: niki[7])
    }
}
