---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: ''
      # Show a call-to-action button under your biography? (optional)
      #button:
        #text: Download CV
       # url: uploads/Jiannan Zhang’s CV.pdf
      headings:
        about: 'About'
        #education: ''
        #interests: ''
      biography:
        style: "max-width: 80ch;"
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true

      # Name heading sizing to accommodate long or short names
      name:
        size: md # Options: xs, sm, md, lg (default), xl

      # Avatar customization
      avatar:
        size: large # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded

  - block: collection
    id: papers
    content:
      title: Selected Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2

  - block: collection
    content:
      title: Recent Publications
      text: ''
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation
  
  - block: features
    content:
      title: Everything you need
      text: From data to deployment, one stack.
    items:
      - name: Tailwind 4
        description: Pre-configured tokens, gradients, and typography.
        icon: hero/swatch
      - name: Preact blocks
        description: Composable UI shipped with sensible defaults.
        icon: hero/puzzle-piece
      - name: Docs-ready
        description: Markdown, data-driven content, and inline shortcodes.
        icon: hero/book-open

  - block: map
    id: contact
    content:
      title: Visit the lab
      subtitle: Enter Building A and take the stairs to Office A507 on Floor 5.
      location:
        address: "Sichuan University, No.24 South Section 1, Yihuan Road\nChengdu, Sichuan 610064\nChina"
        lat: 30.631664
        lng: 104.086334
      zoom: 15
      cta:
        directions:
          text: Get directions
          url: "https://www.google.com/maps/dir/?api=1&destination=30.631664,104.086334"
        email: biozhangjn@gmail.com
    design:
      layout: side-by-side
      height: md
      style: streets
---
