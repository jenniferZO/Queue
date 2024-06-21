import SwiftUI

class RefreshManager: ObservableObject {
    @Published var shouldRefresh = false
    
    func triggerRefresh() {
        shouldRefresh.toggle()
    }
}

@main
struct MyApp: App {
    @StateObject private var refreshManager = RefreshManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(refreshManager: refreshManager)
        }
    }
}

