import SwiftUI
import Firebase

@main
struct TwitterCloneSwiftUIApp: App {
    @StateObject var viewModel = AuthenticationViewModel()
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
             }
            .environmentObject(viewModel)
        }
    }
}
