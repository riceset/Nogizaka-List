import SwiftUI
import ModalView

struct MemberListView: View {
    var body: some View {
        ModalPresenter {
            List {
                Section(header: Text("一期生")) {
                    ForEach(iki.indices) { index in
                        HStack {
                            ModalLink(
                                destination: memberInfo(member: iki[index]),
                                label: {
                                    HStack {
                                        Image(iki[index].photo)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 60, height: 60, alignment: .center)
                                            .clipShape(Circle())
                                        Text(iki[index].name)
                                            .foregroundColor(.primary)
                                    }
                                })
                        }
                    }
                }
                Section(header: Text("二期生")) {
                    ForEach(niki.indices) { index in
                        HStack {
                            ModalLink(
                                destination: memberInfo(member: niki[index]),
                                label: {
                                    HStack {
                                        Image(niki[index].photo)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 60, height: 60, alignment: .center)
                                            .clipShape(Circle())
                                        Text(niki[index].name)
                                            .foregroundColor(.primary)
                                    }
                                })
                        }
                    }
                }
                Section(header: Text("三期生")) {
                    ForEach(sanki.indices) { index in
                        HStack {
                            ModalLink(
                                destination: memberInfo(member: sanki[index]),
                                label: {
                                    HStack {
                                        Image(sanki[index].photo)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 60, height: 60, alignment: .center)
                                            .clipShape(Circle())
                                        Text(sanki[index].name)
                                            .foregroundColor(.primary)
                                    }
                                })
                        }
                    }
                }
            }.listStyle(InsetGroupedListStyle())
        }
    }
}

struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
