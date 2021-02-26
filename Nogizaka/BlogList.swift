import SwiftUI
import ModalView
import BetterSafariView

struct BlogListView: View {
    @State private var presentingSafariView = false
    var body: some View {
        ModalPresenter {
            List {
                Section(header: Text("一期生")) {
                    ForEach(iki.indices) { index in
                        Button(action: {
                            presentingSafariView = true
                        }) {
                            HStack {
                                Image(iki[index].photo)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .clipShape(Circle())
                                Text(iki[index].name)
                            }
                        }
                        .safariView(isPresented: $presentingSafariView) {
                            SafariView(
                                url: URL(string: "http://blog.nogizaka46.com/\(iki[index].blog)/")!
                            )
                        }
                    }
                }
                Section(header: Text("二期生")) {
                    ForEach(niki.indices) { index in
                        HStack {
                            Link(destination: URL(string: "https://blog.nogizaka46.com/\(niki[index].blog)/")!, label: {
                                HStack {
                                    Image(niki[index].photo)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .clipShape(Circle())
                                    Text(niki[index].name)
                                }
                            })
                        }
                    }
                }
                Section(header: Text("三期生")) {
                    ForEach(sanki.indices) { index in
                        HStack {
                            Link(destination: URL(string: "http://blog.nogizaka46.com/\(sanki[index].blog)/")!, label: {
                                HStack {
                                    Image(sanki[index].photo)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .clipShape(Circle())
                                    Text(sanki[index].name)
                                }
                            })
                        }
                    }
                }
            }.listStyle(InsetGroupedListStyle())
        }
    }
}

struct BlogListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
