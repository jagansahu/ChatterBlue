import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    let service = TweetService()
    let userService = UserService()

    init() {
        fetchTweets()
    }

    func fetchTweets() {
        service.fetchTweets { tweets in
            self.tweets = tweets
            for index in 0 ..< tweets.count {
                let uid = tweets[index].uid
                self.userService.fetchUser(withUid: uid) { user in
                    self.tweets[index].user = user
                }
            }
        }
    }
}
