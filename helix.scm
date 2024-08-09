
(define helix-without-grammar
  (package
    (inherit helix)
    (name "helix-without-grammar")
    (version %helix-version)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (modules '((guix build utils)))
        (snippet
          '(begin
             (delete-file-recursively "Cargo.lock")))
        (file-name (git-file-name "helix" version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (arguments
      `(#:tests? #f
        #:install-source? #f
        #:imported-modules (,@%cargo-build-system-modules
                            (guix build cargo-build-system))
        #:modules ((guix build utils)
                   (guix build cargo-build-system)
                   (ice-9 match))
        #:phases
        ,#~(modify-phases %standard-phases
             (add-after 'unpack 'disable-grammar-build
               (lambda _
                 (setenv "HELIX_DISABLE_AUTO_GRAMMAR_BUILD" "1")))
             (replace 'install
                      (lambda* (#:key outputs #:allow-other-keys)
                               (let* ((out (assoc-ref outputs "out"))
                                      (bin (string-append out "/bin"))
                                      (hx (string-append bin "/hx"))
                                      (share (string-append out "/usr/share/helix"))
                                      (applications (string-append out "/share/applications"))
                                      (runtime (string-append share "/runtime")))
                                 (install-file "target/release/hx" bin)
                                 (install-file "contrib/Helix.desktop" applications)
                                 (copy-recursively "runtime" runtime)
                                 (wrap-program hx `("HELIX_RUNTIME" prefix (,runtime)))))))
        #:cargo-inputs (("rust-helix-core"   ,rust-helix-core-24.3.0)
                        ("rust-helix-view"   ,rust-helix-view-24.3.0)
                        ("rust-helix-term"   ,rust-helix-term-24.3.0)
                        ("rust-helix-tui"    ,rust-helix-tui-24.3.0)
                        ("rust-helix-lsp"    ,rust-helix-lsp-24.3.0)
                        ("rust-helix-event"  ,rust-helix-event-24.3.0)
                        ("rust-helix-dap"    ,rust-helix-dap-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-vcs"    ,rust-helix-vcs-24.3.0)
                        ("rust-helix-parsec" ,rust-helix-parsec-24.3.0)
                        ("rust-helix-stdx"   ,rust-helix-stdx-24.3.0)
                        ("rust-xtask"        ,rust-xtask-24.3.0))))))
