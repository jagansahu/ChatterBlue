import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweeet = false
    let service = TweetService()

    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweeet = true
            } else {
                //you can enable to show error view here...create it!
            }
        }
    }
}
