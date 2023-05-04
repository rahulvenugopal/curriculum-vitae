contact_section <- function(xlsx = "data/cv.xlsx", sheet = "contact", colour = "#333333") {
  read_excel_sheet(xlsx, sheet)[
    j = sprintf(
      fmt = paste(
        "## Contact Info {#contact}\n",
        "- %s %s",
        "- %s %s",
        "- %s %s",
        "- %s [%s](mailto:%s)",
        # "- %s %s",
        "- %s [%s](%s)",
        "- %s [%s](https://orcid.org/%s)",
        "- %s [%s](https://github.com/%s)",
        "- %s [%s](https://twitter.com/%s)",
        "- %s [@%s](https://scholar.google.co.in/citations?user=%s)",
        "\n",
        sep = "\n"
      ),
      fontawesome::fa("user", fill = colour), position,
      fontawesome::fa("building-columns", fill = colour), institute,
      fontawesome::fa("map-location-dot", fill = colour), city,
      fontawesome::fa("envelope", fill = colour), gsub("\\.", "[dot]", sub("@", "[at]", email)), email,
      # fontawesome::fa("phone", fill = colour), phone,
      fontawesome::fa("house", fill = colour), sub("/$", "", sub("https*://", "", website)), website,
      fontawesome::fa("orcid", fill = colour), orcid, orcid,
      fontawesome::fa("github", fill = colour), github, github,
      fontawesome::fa("twitter", fill = colour), twitter, twitter,
      fontawesome::fa("graduation-cap", fill = colour), googlescholar, googlescholar
    )
  ]
}
