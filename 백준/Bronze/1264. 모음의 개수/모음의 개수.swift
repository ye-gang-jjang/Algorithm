while let input = readLine(), input != "#" {
    print(
        input
            .lowercased()
            .filter {
                "aeiou".map {
                    String($0)
                }.contains(String($0))
            }.count
    )
}