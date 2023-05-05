resource "github_repository" "myrepo" {
  name               = "KnightsTourProblem"
  description        = "App to solve the Knight's Tour Problem in chezzboard"
  visibility         = "public"
  gitignore_template = "Java"
}
