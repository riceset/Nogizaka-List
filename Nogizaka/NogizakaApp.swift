import SwiftUI

@main
struct NogizakaApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                
                NavigationView {
                    ContentView()
                        .navigationBarTitle("メンバー一覧")
                }
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("メンバー")
                }
                NavigationView {
                    BlogListView()
                        .navigationBarTitle("ブログ")
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("ブログ")
                }
                
                NavigationView {
                    information()
                        .navigationBarTitle("乃木坂46とは?")
                }
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("その他")
                }
            }
        }
    }
}
