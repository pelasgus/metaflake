;;; Copyright © 2024 Murilo <murilo@disroot.org>
;;;
;;; This file is NOT part of GNU Guix.

(define-module (saayix packages rust helix)
  #:use-module (saayix packages)
  #:use-module (srfi srfi-1)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages version-control)
  #:export (helix))

(define %helix-version "24.3.0")

(define (make-grammar-source language git-url revision hash)
  (origin
    (method git-fetch)
    (uri (git-reference
          (url git-url)
          (commit revision)))
    (file-name (git-file-name (string-append "grammar-" language) %helix-version))
    (sha256
     (base32 hash))))

(define grammar-ada
  (make-grammar-source "ada"
                       "https://github.com/briot/tree-sitter-ada"
                       "ba0894efa03beb70780156b91e28c716b7a4764d"
                       "0d2fn0qq6mzbpqcr5ws2kcrkskkyj6skjad4aiyxcbdxqcfq4k6z"))
(define grammar-adl
  (make-grammar-source "adl"
                       "https://github.com/adl-lang/tree-sitter-adl"
                       "2787d04beadfbe154d3f2da6e98dc45a1b134bbf"
                       "1b0zgc00n5fv84bwbpnwlk28qi9mn1r6cghfcajs1wpj7172v0c1"))
(define grammar-agda
  (make-grammar-source "agda"
                       "https://github.com/tree-sitter/tree-sitter-agda"
                       "c21c3a0f996363ed17b8ac99d827fe5a4821f217"
                       "0y0dym2wr8hn2pg1kys1bb87cndp5qbxkvmc0vd22zfwrkghjp8i"))
(define grammar-astro
  (make-grammar-source "astro"
                       "https://github.com/virchau13/tree-sitter-astro"
                       "947e93089e60c66e681eba22283f4037841451e7"
                       "0qh9swlff8kwf46vql19m3rk08xgjfz3vpwfzdrawvlgwkxy4ndb"))
(define grammar-awk
  (make-grammar-source "awk"
                       "https://github.com/Beaglefoot/tree-sitter-awk"
                       "a799bc5da7c2a84bc9a06ba5f3540cf1191e4ee3"
                       "0rw9p60vf2119vvjqnr4an85bryr8nq7jh0pkhzwpy7xh0nszy83"))
(define grammar-bash
  (make-grammar-source "bash"
                       "https://github.com/tree-sitter/tree-sitter-bash"
                       "f8fb3274f72a30896075585b32b0c54cad65c086"
                       "1aagb3ckcngql1kmlw83bkbh7mi0c46jlhn3bmbli4rnprhnlgdj"))
(define grammar-bass
  (make-grammar-source "bass"
                       "https://github.com/vito/tree-sitter-bass"
                       "501133e260d768ed4e1fd7374912ed5c86d6fd90"
                       "14zs56rb53qzkx9l9hgpn41q2nycrrdh2jdbybq55w34gcgg6sh2"))
(define grammar-beancount
  (make-grammar-source "beancount"
                       "https://github.com/polarmutex/tree-sitter-beancount"
                       "f3741a3a68ade59ec894ed84a64673494d2ba8f3"
                       "04dlhffhzg6gaj6i5ias20zshhrapm98lryrdv5f6sfx54b7gmjs"))
(define grammar-bibtex
  (make-grammar-source "bibtex"
                       "https://github.com/latex-lsp/tree-sitter-bibtex"
                       "ccfd77db0ed799b6c22c214fe9d2937f47bc8b34"
                       "0m7f3dkqbmy8x1bhl11m8f4p6n76wfvh99rp46zrqv39355nw1y2"))
(define grammar-bicep
  (make-grammar-source "bicep"
                       "https://github.com/the-mikedavis/tree-sitter-bicep"
                       "d8e097fcfa143854861ef737161163a09cc2916b"
                       "1zm5i4723afmd95lg1xlrh0v2rdy116l87m4jcdfzzynls57zdhp"))
(define grammar-bitbake
  (make-grammar-source "bitbake"
                       "https://github.com/tree-sitter-grammars/tree-sitter-bitbake"
                       "10bacac929ff36a1e8f4056503fe4f8717b21b94"
                       "1pfma482nyc88x56v6l6rmhdy44qbwibrqri38wkkh66a1fka8ix"))
(define grammar-blade
  (make-grammar-source "blade"
                       "https://github.com/EmranMR/tree-sitter-blade"
                       "4c66efe1e05c639c555ee70092021b8223d2f440"
                       "1gwh9smid03c4ai5whp6v1d6zjz77v9g5qns5039hczrvkwrc000"))
(define grammar-blueprint
  (make-grammar-source "blueprint"
                       "https://gitlab.com/gabmus/tree-sitter-blueprint"
                       "863cea9f83ad5637300478e0559262f1e791684b"
                       "13pc6hy1b0c0hbzcg92zxi23j7jx1l2npmwynbmfchzql5v31fa1"))
(define grammar-c
  (make-grammar-source "c"
                       "https://github.com/tree-sitter/tree-sitter-c"
                       "7175a6dd5fc1cee660dce6fe23f6043d75af424a"
                       "1w03r4l773ki4iq2xxsc2pqxf3pjsbybq3xq4glmnsihgylibn8v"))
(define grammar-c-sharp
  (make-grammar-source "c-sharp"
                       "https://github.com/tree-sitter/tree-sitter-c-sharp"
                       "5b60f99545fea00a33bbfae5be956f684c4c69e2"
                       "1dzfnj9b5xgx0av4xyvd71i8bj3hxaq97s91np5jzd2vjvbvw7p1"))
(define grammar-capnp
  (make-grammar-source "capnp"
                       "https://github.com/amaanq/tree-sitter-capnp"
                       "fc6e2addf103861b9b3dffb82c543eb6b71061aa"
                       "1gcz5v7i1imdsd7vxzj41iflsxx77zvvy9ngn95l8kg6rz8y3b0l"))
(define grammar-cel
  (make-grammar-source "cel"
                       "https://github.com/bufbuild/tree-sitter-cel"
                       "9f2b65da14c216df53933748e489db0f11121464"
                       "0kzpyycknbhz02w7fa3nch61ijv13aimw6ikm805cf8g1jjjp2la"))
(define grammar-clojure
  (make-grammar-source "clojure"
                       "https://github.com/sogaiu/tree-sitter-clojure"
                       "e57c569ae332ca365da623712ae1f50f84daeae2"
                       "0hq8rv4s0gzbfv3qj4gsrm87baiy6k1hyfbhbbpwbrcpd8jl7gdn"))
(define grammar-cmake
  (make-grammar-source "cmake"
                       "https://github.com/uyha/tree-sitter-cmake"
                       "6e51463ef3052dd3b328322c22172eda093727ad"
                       "14l7l6cc9pdqinff9hjda7rakzfvwk0qcbv6djl0s9f21875l4nv"))
(define grammar-comment
  (make-grammar-source "comment"
                       "https://github.com/stsewd/tree-sitter-comment"
                       "aefcc2813392eb6ffe509aa0fc8b4e9b57413ee1"
                       "0j7if2qcjsiqqg4cihs99db5gkp1l362gzf6rbjm9fhmsslh26ca"))
(define grammar-cpon
  (make-grammar-source "cpon"
                       "https://github.com/fvacek/tree-sitter-cpon"
                       "0d01fcdae5a53191df5b1349f9bce053833270e7"
                       "1ar8dfjjg1pp9i403jm21d4b70xi2w4kjdmwnxlc597582jkjx56"))
(define grammar-cpp
  (make-grammar-source "cpp"
                       "https://github.com/tree-sitter/tree-sitter-cpp"
                       "670404d7c689be1c868a46f919ba2a3912f2b7ef"
                       "0qwxn0h7y5jizxlqp7mgih9cscf67dlhwbrnn42fgvj837ddmqag"))
(define grammar-css
  (make-grammar-source "css"
                       "https://github.com/tree-sitter/tree-sitter-css"
                       "769203d0f9abe1a9a691ac2b9fe4bb4397a73c51"
                       "05875jmkkklx0b5g1h4qc8cbgcj8mr1n8slw7hsn0wssn7yn42z5"))
(define grammar-cue
  (make-grammar-source "cue"
                       "https://github.com/eonpatapon/tree-sitter-cue"
                       "61843e3beebf19417e4fede4e8be4df1084317ad"
                       "15cmlkip9nl6yxkbkv0lp7prfyrhri94szqg3vn7a90s4zjkfx99"))
(define grammar-d
  (make-grammar-source "d"
                       "https://github.com/gdamore/tree-sitter-d"
                       "5566f8ce8fc24186fad06170bbb3c8d97c935d74"
                       "1kkf3r4k8c3cps2ccwxlml04s42zsk67j3ag37m0w1hi83ya1cl1"))
(define grammar-dart
  (make-grammar-source "dart"
                       "https://github.com/UserNobody14/tree-sitter-dart"
                       "e398400a0b785af3cf571f5a57eccab242f0cdf9"
                       "05868i5156y1fd0l14q1fq2ykp7srrkwhs3d6jks7bbrahj6lcgq"))
(define grammar-dbml
  (make-grammar-source "dbml"
                       "https://github.com/dynamotn/tree-sitter-dbml"
                       "2e2fa5640268c33c3d3f27f7e676f631a9c68fd9"
                       "1k3wrmg6iz75iqx05g3hr9rkfh8h4d538g80jdhzvi0qlrdm8713"))
(define grammar-devicetree
  (make-grammar-source "devicetree"
                       "https://github.com/joelspadin/tree-sitter-devicetree"
                       "877adbfa0174d25894c40fa75ad52d4515a36368"
                       "1ds7pa4x1yd54xa2mba37vp8lbi8n4l975lps0249x8xw35r0jrl"))
(define grammar-dhall
  (make-grammar-source "dhall"
                       "https://github.com/jbellerb/tree-sitter-dhall"
                       "affb6ee38d629c9296749767ab832d69bb0d9ea8"
                       "0r4f4w2jhm2hyvh3r3phdjhigsh0an8g4p21cbz8ldkld8ma9lxb"))
(define grammar-diff
  (make-grammar-source "diff"
                       "https://github.com/the-mikedavis/tree-sitter-diff"
                       "fd74c78fa88a20085dbc7bbeaba066f4d1692b63"
                       "0lbadj3657yk6r46sffbzkmm1kp47rydhsn1bj1w1mnyr27bfvrf"))
(define grammar-dockerfile
  (make-grammar-source "dockerfile"
                       "https://github.com/camdencheek/tree-sitter-dockerfile"
                       "8ee3a0f7587b2bd8c45c8cb7d28bd414604aec62"
                       "0izv8fryh7vivh9nbpzqpxb74fanrnd21bbq8xzazz4dvgfd7g93"))
(define grammar-dot
  (make-grammar-source "dot"
                       "https://github.com/rydesun/tree-sitter-dot"
                       "917230743aa10f45a408fea2ddb54bbbf5fbe7b7"
                       "1q2rbv16dihlmrbxlpn0x03na7xp8rdhf58vwm3lryn3nfcjckn2"))
(define grammar-dtd
  (make-grammar-source "dtd"
                       "https://github.com/KMikeeU/tree-sitter-dtd"
                       "6116becb02a6b8e9588ef73d300a9ba4622e156f"
                       "1gs1gkk20khmvz10ikhym9yqkcn5km5hq4hz4jyxdz67jzpbbbls"))
(define grammar-earthfile
  (make-grammar-source "earthfile"
                       "https://github.com/glehmann/tree-sitter-earthfile"
                       "a079e6c472eeedd6b9a1e03ca0b6c82cd6a112a4"
                       "1n40qf77lbp5cxxml382ch26gvjy0ysh8mi3hx0q0hg48skix3ak"))
(define grammar-edoc
  (make-grammar-source "edoc"
                       "https://github.com/the-mikedavis/tree-sitter-edoc"
                       "74774af7b45dd9cefbf9510328fc6ff2374afc50"
                       "1qz6hghnyhrgm23793hyw84zxzrhb3jc1prih806hirzybbapc80"))
(define grammar-eex
  (make-grammar-source "eex"
                       "https://github.com/connorlay/tree-sitter-eex"
                       "f742f2fe327463335e8671a87c0b9b396905d1d1"
                       "19n07ywavwkh4p189d18wxhch45qgn094b7mkdymh60zr7cbmyjh"))
(define grammar-elixir
  (make-grammar-source "elixir"
                       "https://github.com/elixir-lang/tree-sitter-elixir"
                       "b20eaa75565243c50be5e35e253d8beb58f45d56"
                       "1i0c0xki3sv24649p0ws7xs2jagbwg7z7baz1960239bj94nl487"))
(define grammar-elm
  (make-grammar-source "elm"
                       "https://github.com/elm-tooling/tree-sitter-elm"
                       "df4cb639c01b76bc9ac9cc66788709a6da20002c"
                       "14il4yv65w7l29s84ilp3w3v9hy7x8j2bg73wwjyazava6n0f41y"))
(define grammar-elvish
  (make-grammar-source "elvish"
                       "https://github.com/ckafi/tree-sitter-elvish"
                       "e50787cadd3bc54f6d9c0704493a79078bb8a4e5"
                       "1xw9mqq3p64lgli6nvlavrrlg29nfj2fbg7rr2jw1jcjk8lgxv1p"))
(define grammar-embedded-template
  (make-grammar-source "embedded-template"
                       "https://github.com/tree-sitter/tree-sitter-embedded-template"
                       "d21df11b0ecc6fd211dbe11278e92ef67bd17e97"
                       "0h3nj6fz512riyx2b65pg9pjprkpkasnglwljlzi6s1in9fdig3x"))
(define grammar-erlang
  (make-grammar-source "erlang"
                       "https://github.com/the-mikedavis/tree-sitter-erlang"
                       "9d4b36a76d5519e3dbf1ec4f4b61bb1a293f584c"
                       "19syh7grvvh1gfyqzdxvfhxrbn66q11i3ag0xfmpcq1vsy3y7zxf"))
(define grammar-esdl
  (make-grammar-source "esdl"
                       "https://github.com/greym0uth/tree-sitter-esdl"
                       "df83acc8cacd0cfb139eecee0e718dc32c4f92e2"
                       "1p02ij9clx6824cfxscmcqm10iai9wl7q41jyg6qxglxrswqxjzs"))
(define grammar-fidl
  (make-grammar-source "fidl"
                       "https://github.com/google/tree-sitter-fidl"
                       "bdbb635a7f5035e424f6173f2f11b9cd79703f8d"
                       "0sp919n7fw3v5smyipp9087rm25ij88fzp298jkgnz00p45l1kzs"))
(define grammar-fish
  (make-grammar-source "fish"
                       "https://github.com/ram02z/tree-sitter-fish"
                       "84436cf24c2b3176bfbb220922a0fdbd0141e406"
                       "12s3db2mg9qa8l1i4a5h59kd7kl5j83wyl5kzq7j2k56xmvq56x0"))
(define grammar-forth
  (make-grammar-source "forth"
                       "https://github.com/alexanderbrevig/tree-sitter-forth"
                       "90189238385cf636b9ee99ce548b9e5b5e569d48"
                       "02s7g2ni3w4q5aa1acrz5van1p5ldp0gxfwgpfdpncjwxw78295z"))
(define grammar-fortran
  (make-grammar-source "fortran"
                       "https://github.com/stadelmanma/tree-sitter-fortran"
                       "f0f2f100952a353e64e26b0fa710b4c296d7af13"
                       "17iiz38s7adkzv9rw97nn5nd9kvn1vyccm7r6ywipaa5aim0nm6a"))
(define grammar-fsharp
  (make-grammar-source "fsharp"
                       "https://github.com/kaashyapan/tree-sitter-fsharp"
                       "18da392fd9bd5e79f357abcce13f61f3a15e3951"
                       "0qpwcwd36j344xp4dkddqk0iwdf2xfhwhli6v2pn33s3v38a5sm6"))
(define grammar-gas
  (make-grammar-source "gas"
                       "https://github.com/sirius94/tree-sitter-gas"
                       "60f443646b20edee3b7bf18f3a4fb91dc214259a"
                       "0k3i8qjv04q0g4zz116y3x541jgl329zn76r6mvfg3mqcagcs8hz"))
(define grammar-gdscript
  (make-grammar-source "gdscript"
                       "https://github.com/PrestonKnopp/tree-sitter-gdscript"
                       "a4b57cc3bcbfc24550e858159647e9238e7ad1ac"
                       "0mppjapxsdch9wwqklnfb0cs7xwja333w6wzygykzrb7nna50lfz"))
(define grammar-git-commit
  (make-grammar-source "git-commit"
                       "https://github.com/the-mikedavis/tree-sitter-git-commit"
                       "6f193a66e9aa872760823dff020960c6cedc37b3"
                       "0isahiak1vslf8mr2arq34c0j9xr1fxxl7xh2h0ps5iz1xkdyii8"))
(define grammar-git-config
  (make-grammar-source "git-config"
                       "https://github.com/the-mikedavis/tree-sitter-git-config"
                       "9c2a1b7894e6d9eedfe99805b829b4ecd871375e"
                       "0s3i4wh1c9hbgki2ibhkjnqw2rriixa01qpr55khhgsg30338k1v"))
(define grammar-git-rebase
  (make-grammar-source "git-rebase"
                       "https://github.com/the-mikedavis/tree-sitter-git-rebase"
                       "d8a4207ebbc47bd78bacdf48f883db58283f9fd8"
                       "16g3i69jxq7fm2nis2d61bcj1r84sbr1drbmjd6zwm8rxkdnxd4r"))
(define grammar-gitattributes
  (make-grammar-source "gitattributes"
                       "https://github.com/mtoohey31/tree-sitter-gitattributes"
                       "3dd50808e3096f93dccd5e9dc7dc3dba2eb12dc4"
                       "1idi1hrpkc17y5vi2h0vfwzw64w6wy4cz4yk08avqnms6mxkxq94"))
(define grammar-gitignore
  (make-grammar-source "gitignore"
                       "https://github.com/shunsambongi/tree-sitter-gitignore"
                       "f4685bf11ac466dd278449bcfe5fd014e94aa504"
                       "17rar33y4dngmx69kjiw6wgrsd6kc0c8w4xa4rx06rjmv7b1hfij"))
(define grammar-gleam
  (make-grammar-source "gleam"
                       "https://github.com/gleam-lang/tree-sitter-gleam"
                       "bcf9c45b56cbe46e9dac5eee0aee75df270000ac"
                       "008k7v56n558lzrr7dx5p0r5mb007fiwnk4ar3wglak0gqyhzn2x"))
(define grammar-glimmer
  (make-grammar-source "glimmer"
                       "https://github.com/ember-tooling/tree-sitter-glimmer"
                       "5dc6d1040e8ff8978ff3680e818d85447bbc10aa"
                       "1rhyc8vg0q96qppnwvvalx094n8j3h7yn0sqynpghihqfab0f6hb"))
(define grammar-glsl
  (make-grammar-source "glsl"
                       "https://github.com/theHamsta/tree-sitter-glsl"
                       "88408ffc5e27abcffced7010fc77396ae3636d7e"
                       "1zsj20xxv8mcj991gyp2gi2h31p16znkjxgbw5lpymj3nz7w22ld"))
(define grammar-gn
  (make-grammar-source "gn"
                       "https://github.com/willcassella/tree-sitter-gn"
                       "e18d6e36a79b20dafb58f19d407bd38b0e60260e"
                       "0ramv7vp3s9252iq616a6ixhr02c44ipbgkgny84d87fizxkd4y9"))
(define grammar-go
  (make-grammar-source "go"
                       "https://github.com/tree-sitter/tree-sitter-go"
                       "64457ea6b73ef5422ed1687178d4545c3e91334a"
                       "16d32m78y8jricba9xav35c9y0k2r29irj5xyqgq24323yln9jnz"))
(define grammar-godot-resource
  (make-grammar-source "godot-resource"
                       "https://github.com/PrestonKnopp/tree-sitter-godot-resource"
                       "b6ef0768711086a86b3297056f9ffb5cc1d77b4a"
                       "0agnvg95fx60xkr5fivl1x3yhcw6ca58f7bpx3dq6fl7pyfgrky2"))
(define grammar-gomod
  (make-grammar-source "gomod"
                       "https://github.com/camdencheek/tree-sitter-go-mod"
                       "e8f51f8e4363a3d9a427e8f63f4c1bbc5ef5d8d0"
                       "09rkqwdwhsm41nrz73rqbajap4bc0spjcld9k9fr8xmlmqa67j2b"))
(define grammar-gotmpl
  (make-grammar-source "gotmpl"
                       "https://github.com/dannylongeuay/tree-sitter-go-template"
                       "395a33e08e69f4155156f0b90138a6c86764c979"
                       "0v1ciqdr9zj3hrzg9rrikr6v72yjs25sk631kd32r024igpxflv2"))
(define grammar-gowork
  (make-grammar-source "gowork"
                       "https://github.com/omertuc/tree-sitter-go-work"
                       "6dd9dd79fb51e9f2abc829d5e97b15015b6a8ae2"
                       "1kzrs4rpby3b0h87rbr02k55k3mmkmdy7rvl11q95b3ym0smmyqb"))
(define grammar-graphql
  (make-grammar-source "graphql"
                       "https://github.com/bkegley/tree-sitter-graphql"
                       "5e66e961eee421786bdda8495ed1db045e06b5fe"
                       "0xvrd6p9rxdjpqfq575ap6hpl2f7dad5i4d4m05w1qk9jx33vw9n"))
(define grammar-groovy
  (make-grammar-source "groovy"
                       "https://github.com/murtaza64/tree-sitter-groovy"
                       "235009aad0f580211fc12014bb0846c3910130c1"
                       "0p8wxbw5y3nxzl1g29sn5df8y8hahcl2bv7nl1qw7j4g4v77bfhs"))
(define grammar-haskell
  (make-grammar-source "haskell"
                       "https://github.com/tree-sitter/tree-sitter-haskell"
                       "d7ac98f49e3ed7e17541256fe3881a967d7ffdd3"
                       "0610dpnnrmwdxhj0cz4mnajx4aaxhr77w4vc756605zgv54djisw"))
(define grammar-haskell-persistent
  (make-grammar-source "haskell-persistent"
                       "https://github.com/MercuryTechnologies/tree-sitter-haskell-persistent"
                       "58a6ccfd56d9f1de8fb9f77e6c42151f8f0d0f3d"
                       "01pmwvpaw2amnpqcib5lmzys2f3lbh00qkw0kmxzf6syzjdjg057"))
(define grammar-hcl
  (make-grammar-source "hcl"
                       "https://github.com/MichaHoffmann/tree-sitter-hcl"
                       "3cb7fc28247efbcb2973b97e71c78838ad98a583"
                       "0hg7w3hsvxjwz1rb1izknn46msm4mkjx2cnq603lzn7i9mb1pbyr"))
(define grammar-heex
  (make-grammar-source "heex"
                       "https://github.com/phoenixframework/tree-sitter-heex"
                       "2e1348c3cf2c9323e87c2744796cf3f3868aa82a"
                       "04yzzqfxinsh62l7750grflxg809m8y3qlbmc1vknk2xk34l9d78"))
(define grammar-hocon
  (make-grammar-source "hocon"
                       "https://github.com/antosha417/tree-sitter-hocon"
                       "c390f10519ae69fdb03b3e5764f5592fb6924bcc"
                       "0v1hcfnlxphcpqs1md1cpi358mmfsa3yx8zc0rw65xi8i9hkg6pm"))
(define grammar-hoon
  (make-grammar-source "hoon"
                       "https://github.com/urbit-pilled/tree-sitter-hoon"
                       "1d5df35af3e0afe592832a67b9fb3feeeba1f7b6"
                       "0maph2i76liq3ljac9dgq0fqbdrn41klcr52qp32c2j91v4fj6nv"))
(define grammar-hosts
  (make-grammar-source "hosts"
                       "https://github.com/ath3/tree-sitter-hosts"
                       "301b9379ce7dfc8bdbe2c2699a6887dcb73953f9"
                       "0sgpybvwrvpw0lvk2s96ppyh8132g2vfjyif43yg08zlj06mvjbz"))
(define grammar-html
  (make-grammar-source "html"
                       "https://github.com/tree-sitter/tree-sitter-html"
                       "29f53d8f4f2335e61bf6418ab8958dac3282077a"
                       "0wadphmgndj4vq9mg258624pj0klspbpcx8qlc6f8by5xbshvkmz"))
(define grammar-hurl
  (make-grammar-source "hurl"
                       "https://github.com/pfeiferj/tree-sitter-hurl"
                       "cd1a0ada92cc73dd0f4d7eedc162be4ded758591"
                       "12mc2plz2vvz06qi1hhfsl37pam1i829j4szkz7rab08y0mz7vxy"))
(define grammar-hyprlang
  (make-grammar-source "hyprlang"
                       "https://github.com/tree-sitter-grammars/tree-sitter-hyprlang"
                       "27af9b74acf89fa6bed4fb8cb8631994fcb2e6f3"
                       "1kri1csdk6n13zq9av6z2qv7p685mkxc8297693mbwnb0yn62nbi"))
(define grammar-iex
  (make-grammar-source "iex"
                       "https://github.com/elixir-lang/tree-sitter-iex"
                       "39f20bb51f502e32058684e893c0c0b00bb2332c"
                       "10lwwh3v2cc39hcydz5p899grzy50gr46bbddhs9vaam7wrp25b1"))
(define grammar-ini
  (make-grammar-source "ini"
                       "https://github.com/justinmk/tree-sitter-ini"
                       "4d247fb876b4ae6b347687de4a179511bf67fcbc"
                       "08z3281q9vq3lr3mcj4cm6zh2bsg9jhyrxfqfann9ixklvzglkn6"))
(define grammar-inko
  (make-grammar-source "inko"
                       "https://github.com/inko-lang/tree-sitter-inko"
                       "6983354c13a14bc621d7a3619f1790149e901187"
                       "05665v0015aq3jxxkc9r5cvi09c4x8xvhj926nd6pmn6d4hkrif5"))
(define grammar-janet-simple
  (make-grammar-source "janet-simple"
                       "https://github.com/sogaiu/tree-sitter-janet-simple"
                       "51271e260346878e1a1aa6c506ce6a797b7c25e2"
                       "018vwy6y1kr1bh5wp399vspc1y4wpvvgh0c6p7541xl196rzywa1"))
(define grammar-java
  (make-grammar-source "java"
                       "https://github.com/tree-sitter/tree-sitter-java"
                       "09d650def6cdf7f479f4b78f595e9ef5b58ce31e"
                       "0440xh8x8rkbdlc1f1ail9wzl4583l29ic43x9lzl8290bm64q5l"))
(define grammar-javascript
  (make-grammar-source "javascript"
                       "https://github.com/tree-sitter/tree-sitter-javascript"
                       "f772967f7b7bc7c28f845be2420a38472b16a8ee"
                       "0vp7z57scpbcvyxpya06lnpz9f5kjdb66wjlkrp684xwjjgq1wxd"))
(define grammar-jinja2
  (make-grammar-source "jinja2"
                       "https://github.com/varpeti/tree-sitter-jinja2"
                       "a533cd3c33aea6acb0f9bf9a56f35dcfe6a8eb53"
                       "171na82zigcqn4b8xvr27whfga3y117zlzrcr0f4wni4z6bxxhcj"))
(define grammar-jsdoc
  (make-grammar-source "jsdoc"
                       "https://github.com/tree-sitter/tree-sitter-jsdoc"
                       "189a6a4829beb9cdbe837260653b4a3dfb0cc3db"
                       "0qpsy234p30j6955wpjlaqwbr21bi56p0ln5vhrd84s99ac7s6b6"))
(define grammar-json
  (make-grammar-source "json"
                       "https://github.com/tree-sitter/tree-sitter-json"
                       "73076754005a460947cafe8e03a8cf5fa4fa2938"
                       "1npf2hrx33jhjpmzcyi7aszg436m4d80sa6h4mhhkmx51q4kpcf1"))
(define grammar-json5
  (make-grammar-source "json5"
                       "https://github.com/Joakker/tree-sitter-json5"
                       "c23f7a9b1ee7d45f516496b1e0e4be067264fa0d"
                       "11j8sjq2b0ibiygmcnxzl5vxa0p9ygngfhzjvjl19jnlnf0h7a6p"))
(define grammar-jsonnet
  (make-grammar-source "jsonnet"
                       "https://github.com/sourcegraph/tree-sitter-jsonnet"
                       "0475a5017ad7dc84845d1d33187f2321abcb261d"
                       "1dh8wqi8mnsapzicrdjg6cj6skj9f2ia4ijg08pl45bcxc1lidzc"))
(define grammar-julia
  (make-grammar-source "julia"
                       "https://github.com/tree-sitter/tree-sitter-julia"
                       "8fb38abff74652c4faddbf04d2d5bbbc6b4bae25"
                       "06h5nyxw72z3w5a62y59332w2xg90sm3c2j6na7vvf7nark7vb8v"))
(define grammar-just
  (make-grammar-source "just"
                       "https://github.com/IndianBoy42/tree-sitter-just"
                       "8af0aab79854aaf25b620a52c39485849922f766"
                       "15hl3dsr5kxjl1kl9md2gb9bwj0ni54d9k6jv1h74b3psf4qb0l5"))
(define grammar-kdl
  (make-grammar-source "kdl"
                       "https://github.com/amaanq/tree-sitter-kdl"
                       "3ca569b9f9af43593c24f9e7a21f02f43a13bb88"
                       "1015x24ffrvzb0m0wbqdzmaqavpnjw0gvcagxi9b6vj3n1ynm0ps"))
(define grammar-koka
  (make-grammar-source "koka"
                       "https://github.com/mtoohey31/tree-sitter-koka"
                       "96d070c3700692858035f3524cc0ad944cef2594"
                       "1bxmflc8ynqpdkzwc74fqqcjhzkggkzxbzhbx0ji4g7kfknc0ldk"))
(define grammar-kotlin
  (make-grammar-source "kotlin"
                       "https://github.com/fwcd/tree-sitter-kotlin"
                       "a4f71eb9b8c9b19ded3e0e9470be4b1b77c2b569"
                       "051x0p02dkx0rz83sy70wczm6k5b938q4knhh8halv2acs32l4v9"))
(define grammar-latex
  (make-grammar-source "latex"
                       "https://github.com/latex-lsp/tree-sitter-latex"
                       "8c75e93cd08ccb7ce1ccab22c1fbd6360e3bcea6"
                       "0lc42x604f04x3kkp88vyqa5dx90wqyisiwl7nn861lyxl6phjnf"))
(define grammar-ld
  (make-grammar-source "ld"
                       "https://github.com/mtoohey31/tree-sitter-ld"
                       "0e9695ae0ede47b8744a8e2ad44d4d40c5d4e4c9"
                       "0v306zf0k0q53qzrbbg2r26z10b3w640mamhcr0598xgxx4amv2k"))
(define grammar-ldif
  (make-grammar-source "ldif"
                       "https://github.com/kepet19/tree-sitter-ldif"
                       "0a917207f65ba3e3acfa9cda16142ee39c4c1aaa"
                       "111lalyzwl0lpzmsj9amlbnaqbz447fn9zn526dwmlnc79mf0ay6"))
(define grammar-lean
  (make-grammar-source "lean"
                       "https://github.com/Julian/tree-sitter-lean"
                       "d98426109258b266e1e92358c5f11716d2e8f638"
                       "0sc5h0fan8cmpxxf2jizky0ynmr81qs9q7xgh9zrmdi69r59p0sk"))
(define grammar-ledger
  (make-grammar-source "ledger"
                       "https://github.com/cbarrete/tree-sitter-ledger"
                       "1f864fb2bf6a87fe1b48545cc6adc6d23090adf7"
                       "1qxdad40nladdnq6d2s1z7fxlwjz8llpj85da792pv7p7dwh95vd"))
(define grammar-llvm
  (make-grammar-source "llvm"
                       "https://github.com/benwilliamgraham/tree-sitter-llvm"
                       "e9948edc41e9e5869af99dddb2b5ff5cc5581af6"
                       "0d579ylhi3hgzm5wbahs6hci1rhv7q1x6wsav9dbzv1y6np2dfrk"))
(define grammar-llvm-mir
  (make-grammar-source "llvm-mir"
                       "https://github.com/Flakebi/tree-sitter-llvm-mir"
                       "06fabca19454b2dc00c1b211a7cb7ad0bc2585f1"
                       "1a3ymx9baspxcjvgb0i7369zg42ikl5nf61f9b1y18azs940l35r"))
(define grammar-log
  (make-grammar-source "log"
                       "https://github.com/Tudyx/tree-sitter-log"
                       "62cfe307e942af3417171243b599cc7deac5eab9"
                       "11fw43bavs6wbwcv6j7p7yp0z72inf7l9bca30pjcdx9vy57dwwn"))
(define grammar-lpf
  (make-grammar-source "lpf"
                       "https://gitlab.com/TheZoq2/tree-sitter-lpf"
                       "db7372e60c722ca7f12ab359e57e6bf7611ab126"
                       "1dwkjvwv161m3549bw6wmjvyhsggp8ncxg8hdh4hbyplwq4virb3"))
(define grammar-lua
  (make-grammar-source "lua"
                       "https://github.com/tree-sitter-grammars/tree-sitter-lua"
                       "88e446476a1e97a8724dff7a23e2d709855077f2"
                       "05irhg6gg11r9cnzh0h3691pnxjhd396sa1x8xrgqjz2fd09brf3"))
(define grammar-make
  (make-grammar-source "make"
                       "https://github.com/alemuller/tree-sitter-make"
                       "a4b9187417d6be349ee5fd4b6e77b4172c6827dd"
                       "07gz4x12xhigar2plr3jgazb2z4f9xp68nscmvy9a7wafak9l2m9"))
(define grammar-markdoc
  (make-grammar-source "markdoc"
                       "https://github.com/markdoc-extra/tree-sitter-markdoc"
                       "5ffe71b29e8a3f94823913ea9cea51fcfa7e3bf8"
                       "0xrrkxjbchbaj04z94l91d79jrrwx6zkafcbwig5851lfzsjbadc"))
(define grammar-markdown
  (make-grammar-source "markdown"
                       "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                       "62516e8c78380e3b51d5b55727995d2c511436d8"
                       "08wl8y8xgrr10m1p6xpmv0jbmnif30wgd2q5m28ghh1v37q2ixfp"))
(define grammar-markdown_inline
  (make-grammar-source "markdown_inline"
                       "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                       "62516e8c78380e3b51d5b55727995d2c511436d8"
                       "08wl8y8xgrr10m1p6xpmv0jbmnif30wgd2q5m28ghh1v37q2ixfp"))
(define grammar-matlab
  (make-grammar-source "matlab"
                       "https://github.com/acristoffers/tree-sitter-matlab"
                       "6071891a8c39600203eba20513666cf93b4d650a"
                       "142cm0824hr3k9idzqyc50364yhvbg2pbbvwlk9cdm24kc4q59qz"))
(define grammar-mermaid
  (make-grammar-source "mermaid"
                       "https://github.com/monaqa/tree-sitter-mermaid"
                       "d787c66276e7e95899230539f556e8b83ee16f6d"
                       "106w00y6l1fnjakaz9biqk546h2xy0yzr3wmg0yz6fihzj6kf117"))
(define grammar-meson
  (make-grammar-source "meson"
                       "https://github.com/staysail/tree-sitter-meson"
                       "32a83e8f200c347232fa795636cfe60dde22957a"
                       "0g1kc1hidva3ipi4nsi64r9pm8jc48nmhffqshwvbiss0fdf8ac9"))
(define grammar-move
  (make-grammar-source "move"
                       "https://github.com/tzakian/tree-sitter-move"
                       "8bc0d1692caa8763fef54d48068238d9bf3c0264"
                       "0h3ghnrr0rjnaf1ckgjjy3l9fnj6ix3q3yh7h42h0hn6kqpnjl5y"))
(define grammar-nasm
  (make-grammar-source "nasm"
                       "https://github.com/naclsn/tree-sitter-nasm"
                       "a0db15db6fcfb1bf2cc8702500e55e558825c48b"
                       "1q4xcl0ypf0als770zpg0vv0pfxr2ysxl2vqxhc3m84s3id31sav"))
(define grammar-nickel
  (make-grammar-source "nickel"
                       "https://github.com/nickel-lang/tree-sitter-nickel"
                       "e1d9337864d209898a08c26b8cd4c2dd14c15148"
                       "08rsarbf38rbhy1xwjxa9kvp67n76fff4fisfhq5dqj9v6k43ia5"))
(define grammar-nim
  (make-grammar-source "nim"
                       "https://github.com/alaviss/tree-sitter-nim"
                       "c5f0ce3b65222f5dbb1a12f9fe894524881ad590"
                       "1rdrhazwsc63zvrrsi1gcgkjcbfnpdbq4azbvmvxmbg0kdzijc1b"))
(define grammar-nix
  (make-grammar-source "nix"
                       "https://github.com/nix-community/tree-sitter-nix"
                       "1b69cf1fa92366eefbe6863c184e5d2ece5f187d"
                       "0ls9djhpbbnjvd6b3166zjy92di0927f70720b57j2d3925538i5"))
(define grammar-nu
  (make-grammar-source "nu"
                       "https://github.com/nushell/tree-sitter-nu"
                       "358c4f509eb97f0148bbd25ad36acc729819b9c1"
                       "1vr1gvd163vm2kk8z26zw5x13ri55kyhbr8mpqj9pa240zck0z8c"))
(define grammar-ocaml
  (make-grammar-source "ocaml"
                       "https://github.com/tree-sitter/tree-sitter-ocaml"
                       "9965d208337d88bbf1a38ad0b0fe49e5f5ec9677"
                       "092n6p4c9wqmghzjfxfn0h6y911w009fa9rk588kz4qavdjdx3zm"))
(define grammar-ocaml-interface
  (make-grammar-source "ocaml-interface"
                       "https://github.com/tree-sitter/tree-sitter-ocaml"
                       "9965d208337d88bbf1a38ad0b0fe49e5f5ec9677"
                       "092n6p4c9wqmghzjfxfn0h6y911w009fa9rk588kz4qavdjdx3zm"))
(define grammar-odin
  (make-grammar-source "odin"
                       "https://github.com/tree-sitter-grammars/tree-sitter-odin"
                       "b5f668ef8918aab13812ce73acd89fe191fb8c5e"
                       "1m73plw3c1l3c2dyxkv62k0c89qjhrbiynn0vqrg0ydrqsrsbzqg"))
(define grammar-ohm
  (make-grammar-source "ohm"
                       "https://github.com/novusnota/tree-sitter-ohm"
                       "80f14f0e477ddacc1e137d5ed8e830329e3fb7a3"
                       "1pckhw239d5sidcm5rl04dfx20jnbi6lpwl5r6gvqg89iazm6kca"))
(define grammar-opencl
  (make-grammar-source "opencl"
                       "https://github.com/lefp/tree-sitter-opencl"
                       "8e1d24a57066b3cd1bb9685bbc1ca9de5c1b78fb"
                       "0pqfjd3sn1m8pqkj5hc3bf235jk8v7llh0xmw4470v8v2hw8ladp"))
(define grammar-openscad
  (make-grammar-source "openscad"
                       "https://github.com/bollian/tree-sitter-openscad"
                       "5c3ce93df0ac1da7197cf6ae125aade26d6b8972"
                       "1bimdd71899i454k9638jg5m97scxcvqsn4szy1i9d0lwx8wp05p"))
(define grammar-org
  (make-grammar-source "org"
                       "https://github.com/milisims/tree-sitter-org"
                       "698bb1a34331e68f83fc24bdd1b6f97016bb30de"
                       "0adzb2kw8k3w75p5f3ax9lal64k8n2fwrmrqak2z2w8jl8cgagl6"))
(define grammar-pascal
  (make-grammar-source "pascal"
                       "https://github.com/Isopod/tree-sitter-pascal"
                       "2fd40f477d3e2794af152618ccfac8d92eb72a66"
                       "11zjwk8wpx2b565sf82mh02bp5iswhmfykzdqfk0qwasr9ka2w7y"))
(define grammar-passwd
  (make-grammar-source "passwd"
                       "https://github.com/ath3/tree-sitter-passwd"
                       "20239395eacdc2e0923a7e5683ad3605aee7b716"
                       "03j18mx4g901q70kpy39hayh4snwis62svx6ir5015cvjz4fwiyx"))
(define grammar-pem
  (make-grammar-source "pem"
                       "https://github.com/mtoohey31/tree-sitter-pem"
                       "be67a4330a1aa507c7297bc322204f936ec1132c"
                       "144gsh1cw3vzrgy95fvx7ld6gp0fq1v0mzmll0liiqgyrjsxda3h"))
(define grammar-perl
  (make-grammar-source "perl"
                       "https://github.com/tree-sitter-perl/tree-sitter-perl"
                       "e99bb5283805db4cb86c964722d709df21b0ac16"
                       "0cp7s3aikb0vjwsipanikmyirs49r740bppis7k8nlbq3wf0h91y"))
(define grammar-pest
  (make-grammar-source "pest"
                       "https://github.com/pest-parser/tree-sitter-pest"
                       "a8a98a824452b1ec4da7f508386a187a2f234b85"
                       "0jnxk4zjh5r91pq9rb8d7byxq2hjg8mc6yzr3qahg7pfsbh7b6i6"))
(define grammar-php
  (make-grammar-source "php"
                       "https://github.com/tree-sitter/tree-sitter-php"
                       "f860e598194f4a71747f91789bf536b393ad4a56"
                       "02yc5b3qps8ghsmy4b5m5kldyr5pnqz9yw663v13pnz92r84k14g"))
(define grammar-php-only
  (make-grammar-source "php-only"
                       "https://github.com/tree-sitter/tree-sitter-php"
                       "cf1f4a0f1c01c705c1d6cf992b104028d5df0b53"
                       "1lxfxlkakd6kxi9ma333wfi3xc85z5b4bb9rzpnhm97lxgcpx3kg"))
(define grammar-pkl
  (make-grammar-source "pkl"
                       "https://github.com/apple/tree-sitter-pkl"
                       "c03f04a313b712f8ab00a2d862c10b37318699ae"
                       "00ix6sgzfjhin6qaa7lw31psgpjx6w6plsimx5iwpcdyyjcbh9dv"))
(define grammar-po
  (make-grammar-source "po"
                       "https://github.com/erasin/tree-sitter-po"
                       "417cee9abb2053ed26b19e7de972398f2da9b29e"
                       "1sm6hcyma29rw6shim4h27s0pmyby1yy4bjn9dcv9362xvanhacb"))
(define grammar-pod
  (make-grammar-source "pod"
                       "https://github.com/tree-sitter-perl/tree-sitter-pod"
                       "39da859947b94abdee43e431368e1ae975c0a424"
                       "159vy1hxkziyhbxl4jw2k0scvckn4hh3l8ai5ajaq8blv412bidh"))
(define grammar-ponylang
  (make-grammar-source "ponylang"
                       "https://github.com/mfelsche/tree-sitter-ponylang"
                       "ef66b151bc2604f431b5668fcec4747db4290e11"
                       "08g0a3kmv71rq86sizyikzsv5h2bdg8vcdiln7vrl482dczgxaky"))
(define grammar-powershell
  (make-grammar-source "powershell"
                       "https://github.com/airbus-cert/tree-sitter-powershell"
                       "c9316be0faca5d5b9fd3b57350de650755f42dc0"
                       "0l5znacq20rrqgh62x7d24ac3f97fx19mfs4s64zaqyq4zprba2c"))
(define grammar-prisma
  (make-grammar-source "prisma"
                       "https://github.com/victorhqc/tree-sitter-prisma"
                       "eca2596a355b1a9952b4f80f8f9caed300a272b5"
                       "19zb3dkwp2kpyivygqxk8yph0jpl7hn9zzcry15mshn2n0rs9sih"))
(define grammar-protobuf
  (make-grammar-source "protobuf"
                       "https://github.com/yusdacra/tree-sitter-protobuf"
                       "19c211a01434d9f03efff99f85e19f967591b175"
                       "04gxmrc0xf6x96sv347i1p00jcai31ml0s1csj1iz5mjdzgsllhh"))
(define grammar-prql
  (make-grammar-source "prql"
                       "https://github.com/PRQL/tree-sitter-prql"
                       "09e158cd3650581c0af4c49c2e5b10c4834c8646"
                       "08plfhh3kcfhv7jwws92fwb8hdi51n0snldjm1a1gv5iklnzpm3d"))
(define grammar-purescript
  (make-grammar-source "purescript"
                       "https://github.com/postsolar/tree-sitter-purescript"
                       "5ef5592674ea42de75fc2792972e4ea0b6e3da6c"
                       "0rkssskl2cg5ic8ly784pjylkp71myfsinb7yvnrbdpzs482xmsp"))
(define grammar-python
  (make-grammar-source "python"
                       "https://github.com/tree-sitter/tree-sitter-python"
                       "4bfdd9033a2225cc95032ce77066b7aeca9e2efc"
                       "0gcxmydhb7r6n01nd3a36qrdqrli13qdmixk3d726jvrrxmp2ww5"))
(define grammar-qmljs
  (make-grammar-source "qmljs"
                       "https://github.com/yuja/tree-sitter-qmljs"
                       "0b2b25bcaa7d4925d5f0dda16f6a99c588a437f1"
                       "0sgylcj8bfsiyjh11cfzpzywk66xi9clvbcihryk6qkpndz0pzqx"))
(define grammar-r
  (make-grammar-source "r"
                       "https://github.com/r-lib/tree-sitter-r"
                       "cc04302e1bff76fa02e129f332f44636813b0c3c"
                       "0adq1qng3ghb4wvglplj73q8c95hzpfiqb2q8bqnms81i7p2xma7"))
(define grammar-regex
  (make-grammar-source "regex"
                       "https://github.com/tree-sitter/tree-sitter-regex"
                       "e1cfca3c79896ff79842f057ea13e529b66af636"
                       "0j6j0h8ciyhgmcq9iy3843anyfvd7s0biqzgbsqgwbgbqbg2nfwl"))
(define grammar-rego
  (make-grammar-source "rego"
                       "https://github.com/FallenAngel97/tree-sitter-rego"
                       "9ac75e71b2d791e0aadeef68098319d86a2a14cf"
                       "12napwjsv4hx2k4ad0p2v3mv4lhxgp894riglyqmidxxkikzma9g"))
(define grammar-rescript
  (make-grammar-source "rescript"
                       "https://github.com/jaredramirez/tree-sitter-rescript"
                       "467dcf99f68c47823d7b378779a6b282d7ef9782"
                       "081fdw1vyxbwxlk3x4ldgz2hrsav7cgdc2l2iv5z1rfghhzzb1bk"))
(define grammar-robot
  (make-grammar-source "robot"
                       "https://github.com/Hubro/tree-sitter-robot"
                       "322e4cc65754d2b3fdef4f2f8a71e0762e3d13af"
                       "1b0fx4bah63mi441msq1rhvngh9a1d4a9lydfkl3v46qadc9j5ap"))
(define grammar-ron
  (make-grammar-source "ron"
                       "https://github.com/zee-editor/tree-sitter-ron"
                       "7762d709a0f7c1f9e269d0125a2e8a7a69006146"
                       "1y4hfvmiyllcdbn1n8h422fx3gdw5lwzxgfzb5rjnpwfaw9lk18f"))
(define grammar-rst
  (make-grammar-source "rst"
                       "https://github.com/stsewd/tree-sitter-rst"
                       "25e6328872ac3a764ba8b926aea12719741103f1"
                       "0f53jmpjh2kcl9srwwwb7a5k24729ig96m87qjj99myqfnzahw43"))
(define grammar-ruby
  (make-grammar-source "ruby"
                       "https://github.com/tree-sitter/tree-sitter-ruby"
                       "206c7077164372c596ffa8eaadb9435c28941364"
                       "1pqr24bj68lgi1w2cblr8asfby681l3032jrppq4n9x5zm23fi6n"))
(define grammar-rust
  (make-grammar-source "rust"
                       "https://github.com/tree-sitter/tree-sitter-rust"
                       "473634230435c18033384bebaa6d6a17c2523281"
                       "0bk1j283gvhhrgqym9bzjqf9cc1bkbn763k5svdcaixk51cbgzm9"))
(define grammar-scala
  (make-grammar-source "scala"
                       "https://github.com/tree-sitter/tree-sitter-scala"
                       "7891815f42dca9ed6aeb464c2edc39d479ab965c"
                       "176h1n0dwnmlspx8dkifw87b5ykkk09b8azdc5mx4f7zpzjh20ns"))
(define grammar-scheme
  (make-grammar-source "scheme"
                       "https://github.com/6cdh/tree-sitter-scheme"
                       "af3af6c9356b936f8a515a1e449c32e804c2b1a8"
                       "0q2hrayifi7ikmn9ws8idbhng9ai60wblnmgyzmzqai7sqq2il5k"))
(define grammar-scss
  (make-grammar-source "scss"
                       "https://github.com/serenadeai/tree-sitter-scss"
                       "c478c6868648eff49eb04a4df90d703dc45b312a"
                       "15r3jiv36hzx2pmjmp63am3pbc01s52z36xfraa1aw4wlx7lqnq4"))
(define grammar-slint
  (make-grammar-source "slint"
                       "https://github.com/slint-ui/tree-sitter-slint"
                       "3c82235f41b63f35a01ae3888206e93585cbb84a"
                       "0j5gcbdaxghlr5qrhj80mbp28w5g3hm6kcvj3a4cggpi1dizcx8g"))
(define grammar-smali
  (make-grammar-source "smali"
                       "https://github.com/amaanq/tree-sitter-smali"
                       "5ae51e15c4d1ac93cba6127caf3d1f0a072c140c"
                       "08rarb47vqypijs9wc3pmf6742fzxviiqx99z53adiqacj5rmjl5"))
(define grammar-smithy
  (make-grammar-source "smithy"
                       "https://github.com/indoorvivants/tree-sitter-smithy"
                       "8327eb84d55639ffbe08c9dc82da7fff72a1ad07"
                       "0pkpwq1qhkn8hnmj8244m9fcj4whwngkh1ks15sjv34w1yrqyggb"))
(define grammar-sml
  (make-grammar-source "sml"
                       "https://github.com/Giorbo/tree-sitter-sml"
                       "bd4055d5554614520d4a0706b34dc0c317c6b608"
                       "0yx0yb7cr0v2w8y8zi8nxsvwnwbbaj4fwaqffgky58pd665gvsbw"))
(define grammar-solidity
  (make-grammar-source "solidity"
                       "https://github.com/JoranHonig/tree-sitter-solidity"
                       "08338dcee32603383fcef08f36321900bb7a354b"
                       "1wicnrzf9h36p0vsr8mal9qgg46ah4hhybbjc8n9ir349yz2kqhp"))
(define grammar-spicedb
  (make-grammar-source "spicedb"
                       "https://github.com/jzelinskie/tree-sitter-spicedb"
                       "a4e4645651f86d6684c15dfa9931b7841dc52a66"
                       "1q6qivcfr9qb5a8hv73qrcd0dybqapynnrjmagm1s1119a84yjkl"))
(define grammar-sql
  (make-grammar-source "sql"
                       "https://github.com/DerekStride/tree-sitter-sql"
                       "da2d1eff425b146d3c8cab7be8dfa98b11d896dc"
                       "07c6m4agwnm8hjlkfh1ffss49hs15zmliv47wfxw607qd2z59p38"))
(define grammar-sshclientconfig
  (make-grammar-source "sshclientconfig"
                       "https://github.com/metio/tree-sitter-ssh-client-config"
                       "e45c6d5c71657344d4ecaf87dafae7736f776c57"
                       "1gbvzdysdz2gri7k2bxjchn34cdh0l7y4rfxgs0s8nxz73fpyfaj"))
(define grammar-strace
  (make-grammar-source "strace"
                       "https://github.com/sigmaSd/tree-sitter-strace"
                       "2b18fdf9a01e7ec292cc6006724942c81beb7fd5"
                       "03dsx6mhqsfakp02wvxlf41hsjffrwhrkl2b31sar6y9ffzj0glm"))
(define grammar-supercollider
  (make-grammar-source "supercollider"
                       "https://github.com/madskjeldgaard/tree-sitter-supercollider"
                       "3b35bd0fded4423c8fb30e9585c7bacbcd0e8095"
                       "0ib8mja321zwbw59i45xa66p39gikn8n1pihhv26hm5xgdkwwr4r"))
(define grammar-svelte
  (make-grammar-source "svelte"
                       "https://github.com/Himujjal/tree-sitter-svelte"
                       "be7f2e7db1fc19f0852265ec60923fc058380739"
                       "1kp91sarydq41zznwxwxdv2i2pflgzhmpfv0iqgq47fma9bcv2wy"))
(define grammar-sway
  (make-grammar-source "sway"
                       "https://github.com/FuelLabs/tree-sitter-sway"
                       "e491a005ee1d310f4c138bf215afd44cfebf959c"
                       "0d9qszx7iy8dk68ic24gwdm9xm2636ig7nb3n76l5a1jnsk0i03d"))
(define grammar-swift
  (make-grammar-source "swift"
                       "https://github.com/alex-pinkus/tree-sitter-swift"
                       "b1b66955d420d5cf5ff268ae552f0d6e43ff66e1"
                       "1m59bibnaw8yvrv9515gh22560wp9ys28dc9kxqq8q5i1dgl1r05"))
(define grammar-t32
  (make-grammar-source "t32"
                       "https://gitlab.com/xasc/tree-sitter-t32"
                       "6da5e3cbabd376b566d04282005e52ffe67ef74a"
                       "1gi29xzhdc5yavc6113dw1rd607cpss1b9salpbylci5k8sya405"))
(define grammar-tablegen
  (make-grammar-source "tablegen"
                       "https://github.com/Flakebi/tree-sitter-tablegen"
                       "568dd8a937347175fd58db83d4c4cdaeb6069bd2"
                       "1w03navfgpgg4db9x0xvr2z0l8m07nma4icv0fwdgin4nk59lp4l"))
(define grammar-tact
  (make-grammar-source "tact"
                       "https://github.com/tact-lang/tree-sitter-tact"
                       "ec57ab29c86d632639726631fb2bb178d23e1c91"
                       "1syj5j6capmd07v2dyvfikki4l5yrprk0zixj40q9rsdxhma9p6g"))
(define grammar-task
  (make-grammar-source "task"
                       "https://github.com/alexanderbrevig/tree-sitter-task"
                       "f2cb435c5dbf3ee19493e224485d977cb2d36d8b"
                       "0zg27cs6naj2laf2fa0xmxzg4xpkqpgj10f0va3ay7wzwm2004fc"))
(define grammar-tcl
  (make-grammar-source "tcl"
                       "https://github.com/tree-sitter-grammars/tree-sitter-tcl"
                       "56ad1fa6a34ba800e5495d1025a9b0fda338d5b8"
                       "0sajd8hc78i5hyz85ngppnwqsjyw16r3srsnzwwy69yvx7dvs4hs"))
(define grammar-templ
  (make-grammar-source "templ"
                       "https://github.com/vrischmann/tree-sitter-templ"
                       "db662414ccd6f7c78b1e834e7abe11c224b04759"
                       "12qdbzbpkjb0m4pqk8ak5p77bgb61xf7crrssnd13pql61vmbx8c"))
(define grammar-todotxt
  (make-grammar-source "todotxt"
                       "https://github.com/arnarg/tree-sitter-todotxt"
                       "0207f6a4ab6aeafc4b091914d31d8235049a2578"
                       "0wn05m3ckfpfl2j45ickj1ccmikz5lmsmzm7zbi2llcflpx5cr8m"))
(define grammar-toml
  (make-grammar-source "toml"
                       "https://github.com/ikatyang/tree-sitter-toml"
                       "7cff70bbcbbc62001b465603ca1ea88edd668704"
                       "001pjz32v1b3sawlab68fdqz4xwk0v65wj5cdbcav2w1d9n9rhcd"))
(define grammar-tsq
  (make-grammar-source "tsq"
                       "https://github.com/the-mikedavis/tree-sitter-tsq"
                       "48b5e9f82ae0a4727201626f33a17f69f8e0ff86"
                       "015zsvwwm58b5yzk6dl3kzdpg142qpvbb3fv7804jbjqwi1xy8di"))
(define grammar-tsx
  (make-grammar-source "tsx"
                       "https://github.com/tree-sitter/tree-sitter-typescript"
                       "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf"
                       "1r74108lxyp8hsq0pysy0na4kgn06b4xk4yrlq77fw8jr6vs54m1"))
(define grammar-twig
  (make-grammar-source "twig"
                       "https://github.com/gbprod/tree-sitter-twig"
                       "807b293fec3fead64f54c64fdf6fb05516c032b9"
                       "17ifa0k4z8gcs54b0hvaibdhnfpa6r54qr82c8j5p1fzahrsdb3i"))
(define grammar-typescript
  (make-grammar-source "typescript"
                       "https://github.com/tree-sitter/tree-sitter-typescript"
                       "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf"
                       "1r74108lxyp8hsq0pysy0na4kgn06b4xk4yrlq77fw8jr6vs54m1"))
(define grammar-typst
  (make-grammar-source "typst"
                       "https://github.com/uben0/tree-sitter-typst"
                       "13863ddcbaa7b68ee6221cea2e3143415e64aea4"
                       "198rn8wdcqq51nz6hj1zxk7mplplr2z8vc36z6h1zpjjq925794z"))
(define grammar-ungrammar
  (make-grammar-source "ungrammar"
                       "https://github.com/Philipp-M/tree-sitter-ungrammar"
                       "a7e104629cff5a8b7367187610631e8f5eb7c6ea"
                       "08mzykhw62cnap9by576339xvywap193199jfii61grx9a765l3h"))
(define grammar-unison
  (make-grammar-source "unison"
                       "https://github.com/kylegoetz/tree-sitter-unison"
                       "1f505e2447fa876a87aee47ff3d70b9e141c744f"
                       "1qxx68ga693a95fzc77c3xb7dgccyhx5mdja3375bdn2mblgy62i"))
(define grammar-uxntal
  (make-grammar-source "uxntal"
                       "https://github.com/Jummit/tree-sitter-uxntal"
                       "d68406066648cd6db4c6a2f11ec305af02079884"
                       "1df1pvsml3b53p4zkrpb131wxwkzr68vrx8hv4jbw50sxwjwl2d6"))
(define grammar-v
  (make-grammar-source "v"
                       "https://github.com/v-analyzer/v-analyzer"
                       "e14fdf6e661b10edccc744102e4ccf0b187aa8ad"
                       "1na79z35i6lsrm4b5ww12vs7kl7kwaiwnmdw52p7rkfpd61666qi"))
(define grammar-vala
  (make-grammar-source "vala"
                       "https://github.com/vala-lang/tree-sitter-vala"
                       "c9eea93ba2ec4ec1485392db11945819779745b3"
                       "0xzszj8c5nkk8nccspbiz68aw3ki6pi75ngwrrfqdipxy7ncd70j"))
(define grammar-verilog
  (make-grammar-source "verilog"
                       "https://github.com/tree-sitter/tree-sitter-verilog"
                       "4457145e795b363f072463e697dfe2f6973c9a52"
                       "0lfw8p04c85xyd85jfi3gajzrzsl5xcgc44nwxa43x4g3d7f104p"))
(define grammar-vhdl
  (make-grammar-source "vhdl"
                       "https://github.com/teburd/tree-sitter-vhdl"
                       "c57313adee2231100db0a7880033f6865deeadb2"
                       "142flxd5yqg5aqx507wgqfkmgykjw5kwjq44s1g2gdgscjq4bm64"))
(define grammar-vhs
  (make-grammar-source "vhs"
                       "https://github.com/charmbracelet/tree-sitter-vhs"
                       "9534865e614c95eb9418e5e73f061c32fa4d9540"
                       "093a5cjz2jclljs1z39cxlprsbbljzgvkdlbcyai3rypiza1izj1"))
(define grammar-vue
  (make-grammar-source "vue"
                       "https://github.com/ikatyang/tree-sitter-vue"
                       "91fe2754796cd8fba5f229505a23fa08f3546c06"
                       "0l0kqy9ajm5izqcywd39aavgmc281s8qrhmjkbwl6r8arfj8vsrm"))
(define grammar-wast
  (make-grammar-source "wast"
                       "https://github.com/wasm-lsp/tree-sitter-wasm"
                       "2ca28a9f9d709847bf7a3de0942a84e912f59088"
                       "02v08hs9wirdzfx9a7c3kpn0cpc9i867pw28qka0fid9q537hnbb"))
(define grammar-wat
  (make-grammar-source "wat"
                       "https://github.com/wasm-lsp/tree-sitter-wasm"
                       "2ca28a9f9d709847bf7a3de0942a84e912f59088"
                       "02v08hs9wirdzfx9a7c3kpn0cpc9i867pw28qka0fid9q537hnbb"))
(define grammar-wgsl
  (make-grammar-source "wgsl"
                       "https://github.com/szebniok/tree-sitter-wgsl"
                       "272e89ef2aeac74178edb9db4a83c1ffef80a463"
                       "02nrgw6ypblr226r3d2wh6nn8x6bb3f16ix8anbppgrkzhfam3f7"))
(define grammar-wit
  (make-grammar-source "wit"
                       "https://github.com/hh9527/tree-sitter-wit"
                       "c917790ab9aec50c5fd664cbfad8dd45110cfff3"
                       "08bpcmg2hdc8fyglhy311cx5i1brc798h8aicaxk52wgypv31rz7"))
(define grammar-xit
  (make-grammar-source "xit"
                       "https://github.com/synaptiko/tree-sitter-xit"
                       "7d7902456061bc2ad21c64c44054f67b5515734c"
                       "0lj3p8grbb8527k23mibn2cfxzrikpgwv4qmlcfnvsqqhqfc83w7"))
(define grammar-xml
  (make-grammar-source "xml"
                       "https://github.com/RenjiSann/tree-sitter-xml"
                       "48a7c2b6fb9d515577e115e6788937e837815651"
                       "04jpcxmb9pwam5q6l6s5kvmkzfcnar8yvl3xm5i5rjnzfyvdgkzi"))
(define grammar-xtc
  (make-grammar-source "xtc"
                       "https://github.com/Alexis-Lapierre/tree-sitter-xtc"
                       "7bc11b736250c45e25cfb0215db2f8393779957e"
                       "1ysd1hg6k0m69wqa10ckwrh0n9fpax5svwnm3ib6sapwy4707rdm"))
(define grammar-yaml
  (make-grammar-source "yaml"
                       "https://github.com/ikatyang/tree-sitter-yaml"
                       "0e36bed171768908f331ff7dff9d956bae016efb"
                       "0wyvjh62zdp5bhd2y8k7k7x4wz952l55i1c8d94rhffsbbf9763f"))
(define grammar-yuck
  (make-grammar-source "yuck"
                       "https://github.com/Philipp-M/tree-sitter-yuck"
                       "e3d91a3c65decdea467adebe4127b8366fa47919"
                       "12zf5zqxh6farah2michxjhaxf97bal3x2pgrzfcp0wxz6fkns4z"))
(define grammar-zig
  (make-grammar-source "zig"
                       "https://github.com/maxxnino/tree-sitter-zig"
                       "0d08703e4c3f426ec61695d7617415fff97029bd"
                       "0whj44fl6hmcyap5bjqhy90rd6xnnxgsy3vn1z3mvq8d2mwbnxbb"))

(define rust-addr2line-0.20.0
  (package
    (name "rust-addr2line")
    (version "0.20.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "addr2line" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qv590hm40lz2q77p7s3lghaa5gdbrxcvpiaj1gf1z34ikhpiypl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gimli" ,rust-gimli-0.27.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-adler-1.0.2
  (package
    (name "rust-adler")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "adler" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zim79cvzd5yrkzl3nyfx0avijwgk9fqv3yrscdy1cc79ih02qpj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ahash-0.8.11
  (package
    (name "rust-ahash")
    (version "0.8.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ahash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04chdfkls5xmhp1d48gnjsmglbqibizs3bpbj6rsj604m10si7g8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-getrandom" ,rust-getrandom-0.2.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-version-check" ,rust-version-check-0.9.4)
                        ("rust-zerocopy" ,rust-zerocopy-0.7.31))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-aho-corasick-1.1.2
  (package
    (name "rust-aho-corasick")
    (version "1.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aho-corasick" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w510wnixvlgimkx1zjbvlxh6xps2vjgfqgwf5a6adlbjp5rv5mj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-allocator-api2-0.2.14
  (package
    (name "rust-allocator-api2")
    (version "0.2.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "allocator-api2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bjlw8v0fd9a65q2ah4pig2n00sx3j0zyhgb8ax1yq9mi9w67wn4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-android-tzdata-0.1.1
  (package
    (name "rust-android-tzdata")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android-tzdata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w7ynjxrfs97xg3qlcdns4kgfpwcdv824g611fq32cag4cdr96g9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-android-system-properties-0.1.5
  (package
    (name "rust-android-system-properties")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android_system_properties" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-anyhow-1.0.83
  (package
    (name "rust-anyhow")
    (version "1.0.83")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anyhow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wzm0i8jlmxpcfkmrqnmcpi00ca4g2kg6zfdm4cvbqnwpcnb7g95"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-arc-swap-1.7.1
  (package
    (name "rust-arc-swap")
    (version "1.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "arc-swap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mrl9a9r9p9bln74q6aszvf22q1ijiw089jkrmabfqkbj31zixv9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-autocfg-1.1.0
  (package
    (name "rust-autocfg")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "autocfg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ylp3cb47ylzabimazvbz9ms6ap784zhb6syaz6c1jqpmcmq0s6l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-backtrace-0.3.68
  (package
    (name "rust-backtrace")
    (version "0.3.68")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "backtrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04kyn691d8ykk0ib7692vk8hjbqqpbiaspwwfdhkdi29l26j06a3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-addr2line" ,rust-addr2line-0.20.0)
                        ("rust-cc" ,rust-cc-1.0.97)
                        ("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-miniz-oxide" ,rust-miniz-oxide-0.7.1)
                        ("rust-object" ,rust-object-0.31.1)
                        ("rust-rustc-demangle" ,rust-rustc-demangle-0.1.23))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bitflags-1.3.2
  (package
    (name "rust-bitflags")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bitflags-2.5.0
  (package
    (name "rust-bitflags")
    (version "2.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1h91vdx1il069vdiiissj8ymzj130rbiic0dbs77yxjgjim9sjyg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bstr-1.8.0
  (package
    (name "rust-bstr")
    (version "1.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bstr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0313sqdf0a40vhpnrlkf54zhr76rmlyxzhx00sq8822shfl36bsl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bumpalo-3.12.0
  (package
    (name "rust-bumpalo")
    (version "3.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bumpalo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0damxqdgqqzp3zyfwvbrg5hzx39kqgxnxl3yyq3kk4ald0jiw9hd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bytes-1.4.0
  (package
    (name "rust-bytes")
    (version "1.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gkh3fk4fm9xv5znlib723h5md5sxsvbd5113sbxff6g1lmgvcl9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cassowary-0.3.0
  (package
    (name "rust-cassowary")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cassowary" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lvanj0gsk6pc1chqrh4k5k0vi1rfbgzmsk46dwy3nmrqyw711nz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cc-1.0.97
  (package
    (name "rust-cc")
    (version "1.0.97")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1d6rv3nk5q6lrr3mf7lifqpjr44slylsz3pw6pmn2k2cv1bm76h9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cfg-if-1.0.0
  (package
    (name "rust-cfg-if")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-if" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1za0vb97n4brpzpv8lsbnzmq5r8f2b0cpqqr0sy8h5bn751xxwds"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-chardetng-0.1.17
  (package
    (name "rust-chardetng")
    (version "0.1.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "chardetng" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1spikjcnblwa5n1nnk46fxkwn86yfiqxgs47h4yaw23vbfvg1f0l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-chrono-0.4.38
  (package
    (name "rust-chrono")
    (version "0.4.38")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "chrono" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "009l8vc5p8750vn02z30mblg4pv2qhkbfizhfwmzc6vpy5nr67x2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-android-tzdata" ,rust-android-tzdata-0.1.1)
                        ("rust-iana-time-zone" ,rust-iana-time-zone-0.1.56)
                        ("rust-num-traits" ,rust-num-traits-0.2.15)
                        ("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-clipboard-win-5.3.1
  (package
    (name "rust-clipboard-win")
    (version "5.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clipboard-win" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ba48760mbzv6jsfxbqyhf3zdp86ix3p4adgrsd0vqj4a4zlgx3r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-error-code" ,rust-error-code-3.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-clru-0.6.1
  (package
    (name "rust-clru")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clru" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01xq2vm3pfkja6crsh5r7idzyhy0dhjd8dz2y1zn00rf62kiy6dq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-codespan-reporting-0.11.1
  (package
    (name "rust-codespan-reporting")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "codespan-reporting" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vkfay0aqk73d33kh79k1kqxx06ka22894xhqi89crnc6c6jff1m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-termcolor" ,rust-termcolor-1.2.0)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-content-inspector-0.2.4
  (package
    (name "rust-content-inspector")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "content_inspector" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0f1gwv4axxw9wck4a4jxlkm7xjjakb3616isll2k0s4chmpadgdp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-core-foundation-sys-0.8.4
  (package
    (name "rust-core-foundation-sys")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "core-foundation-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yhf471qj6snnm2mcswai47vsbc9w30y4abmdp4crb4av87sb5p4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cov-mark-1.1.0
  (package
    (name "rust-cov-mark")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cov-mark" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wv75ylrai556m388a40d50fxiyacmvm6qqz6va6qf1q04z3vylz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crc32fast-1.3.2
  (package
    (name "rust-crc32fast")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crc32fast" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03c8f29yx293yf43xar946xbls1g60c207m9drf8ilqhr25vsh5m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-channel-0.5.8
  (package
    (name "rust-crossbeam-channel")
    (version "0.5.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "004jz4wxp9k26z657i7rsh9s7586dklx2c5aqf1n3w1dgzvjng53"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-deque-0.8.3
  (package
    (name "rust-crossbeam-deque")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-deque" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vqczbcild7nczh5z116w8w46z991kpjyw7qxkf24c14apwdcvyf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9.15)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-epoch-0.9.15
  (package
    (name "rust-crossbeam-epoch")
    (version "0.9.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-epoch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ixwc3cq816wb8rlh3ix4jnybqbyyq4l61nwlx0mfm3ck0s148df"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16)
                        ("rust-memoffset" ,rust-memoffset-0.9.0)
                        ("rust-scopeguard" ,rust-scopeguard-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-utils-0.8.16
  (package
    (name "rust-crossbeam-utils")
    (version "0.8.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "153j0gikblz7n7qdvdi8pslhi008s1yp9cmny6vw07ad7pbb48js"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossterm-0.27.0
  (package
    (name "rust-crossterm")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pr413ki440xgddlmkrc4j1bfx1h8rpmll87zn8ykja1bm2gwxpl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.9.1)
                        ("rust-filedescriptor" ,rust-filedescriptor-0.8.2)
                        ("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-signal-hook-mio" ,rust-signal-hook-mio-0.2.3)
                        ("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossterm-winapi-0.9.1
  (package
    (name "rust-crossterm-winapi")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm_winapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxx-1.0.94
  (package
    (name "rust-cxx")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxx" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14zbar3nqjppw6y2a29k9cshi0m3j36dr97qdcqirzn3i5iin7zn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-cxxbridge-flags" ,rust-cxxbridge-flags-1.0.94)
                        ("rust-cxxbridge-macro" ,rust-cxxbridge-macro-1.0.94)
                        ("rust-link-cplusplus" ,rust-link-cplusplus-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxx-build-1.0.94
  (package
    (name "rust-cxx-build")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxx-build" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0yx0wnmc5hz2lfkp3b30chmh4z42bnp4lncgnfpg4bcnx04fgkhj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-codespan-reporting" ,rust-codespan-reporting-0.11.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-scratch" ,rust-scratch-1.0.5)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxxbridge-flags-1.0.94
  (package
    (name "rust-cxxbridge-flags")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxxbridge-flags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fzpqw12j8maki4m19fxrnf6xi2n988q9fgv799qq1p4wwm1fi3r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxxbridge-macro-1.0.94
  (package
    (name "rust-cxxbridge-macro")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxxbridge-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1iavmbfq7c31jg20x62pk6n0ldpkd43xw99yi61gcsr2cj14hi93"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-dashmap-5.4.0
  (package
    (name "rust-dashmap")
    (version "5.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dashmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p2f5kr5hy7h4w3y2abprnxsaq36r685zfx1s8v0nfw2vbgpcw4h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-hashbrown" ,rust-hashbrown-0.12.3)
                        ("rust-lock-api" ,rust-lock-api-0.4.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot-core" ,rust-parking-lot-core-0.9.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-dunce-1.0.4
  (package
    (name "rust-dunce")
    (version "1.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dunce" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fqcbwfclldbknmawi69l6zyncaiqzxkpbybcb2cc7jmlxnqrkjn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-either-1.9.0
  (package
    (name "rust-either")
    (version "1.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "either" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01qy3anr7jal5lpc20791vxrw0nl6vksb5j7x56q2fycgcyy8sm2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-encoding-rs-0.8.34
  (package
    (name "rust-encoding-rs")
    (version "0.8.34")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "encoding_rs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nagpi1rjqdpvakymwmnlxzq908ncg868lml5b70n08bm82fjpdl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-encoding-rs-io-0.1.7
  (package
    (name "rust-encoding-rs-io")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "encoding_rs_io" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10ra4l688cdadd8h1lsbahld1zbywnnqv68366mbhamn3xjwbhqw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-encoding-rs" ,rust-encoding-rs-0.8.34))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-equivalent-1.0.0
  (package
    (name "rust-equivalent")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "equivalent" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18f0q7vd4awiv9bv5mda5yv8lfhpzxspiq8f2jdjqhw0bnygxgw8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-errno-0.3.8
  (package
    (name "rust-errno")
    (version "0.3.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "errno" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ia28ylfsp36i27g1qih875cyyy4by2grf80ki8vhgh6vinf8n52"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-error-code-3.0.0
  (package
    (name "rust-error-code")
    (version "3.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "error-code" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z27hg1c3xr7vchrw28h1qlc3xflrxfbmk8nci10ah5d7cnla7i8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-etcetera-0.8.0
  (package
    (name "rust-etcetera")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "etcetera" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hxrsn75dirbjhwgkdkh0pnpqrnq17ypyhjpjaypgax1hd91nv8k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-faster-hex-0.9.0
  (package
    (name "rust-faster-hex")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "faster-hex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10wi4vqbdpkamw4qvra1ijp4as2j7j1zc66g4rdr6h0xv8gb38m2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fastrand-2.0.1
  (package
    (name "rust-fastrand")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fastrand" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19flpv5zbzpf0rk4x77z4zf25in0brg8l7m304d3yrf47qvwxjr5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fern-0.6.2
  (package
    (name "rust-fern")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fern" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vpinainw32498p0zydmxc24yd3r6479pmhdfb429mfbji3c3w6r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-log" ,rust-log-0.4.21))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-filedescriptor-0.8.2
  (package
    (name "rust-filedescriptor")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "filedescriptor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vplyh0cw35kzq7smmp2ablq0zsknk5rkvvrywqsqfrchmjxk6bi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-filetime-0.2.23
  (package
    (name "rust-filetime")
    (version "0.2.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "filetime" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1za0sbq7fqidk8aaq9v7m9ms0sv8mmi49g6p5cphpan819q4gr0y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-redox-syscall" ,rust-redox-syscall-0.4.1)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-flate2-1.0.27
  (package
    (name "rust-flate2")
    (version "1.0.27")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "flate2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "045hvzdv3159qqjlgr5i3p4d346briddkipwyb5iv7ay17l8xjf6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crc32fast" ,rust-crc32fast-1.3.2)
                        ("rust-miniz-oxide" ,rust-miniz-oxide-0.7.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fnv-1.0.7
  (package
    (name "rust-fnv")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fnv" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-form-urlencoded-1.2.1
  (package
    (name "rust-form-urlencoded")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "form_urlencoded" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0milh8x7nl4f450s3ddhg57a3flcv6yq8hlkyk6fyr3mcb128dp1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-percent-encoding" ,rust-percent-encoding-2.3.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-core-0.3.30
  (package
    (name "rust-futures-core")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07aslayrn3lbggj54kci0ishmd1pr367fp7iks7adia1p05miinz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-executor-0.3.30
  (package
    (name "rust-futures-executor")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-executor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07dh08gs9vfll2h36kq32q9xd86xm6lyl9xikmmwlkqnmrrgqxm5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-futures-task" ,rust-futures-task-0.3.30)
                        ("rust-futures-util" ,rust-futures-util-0.3.30))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-task-0.3.30
  (package
    (name "rust-futures-task")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-task" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "013h1724454hj8qczp8vvs10qfiqrxr937qsrv6rhii68ahlzn1q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-util-0.3.30
  (package
    (name "rust-futures-util")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0j0xqhcir1zf2dcbpd421kgw6wvsk0rpxflylcysn1rlp3g02r1x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-futures-task" ,rust-futures-task-0.3.30)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-pin-utils" ,rust-pin-utils-0.1.0)
                        ("rust-slab" ,rust-slab-0.4.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-getrandom-0.2.9
  (package
    (name "rust-getrandom")
    (version "0.2.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "getrandom" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r6p47dd9f9cgiwlxmksammbfwnhsv5hjkhd0kjsgnzanad1spn8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-wasi" ,rust-wasi-0.11.0+wasi-snapshot-preview1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gimli-0.27.3
  (package
    (name "rust-gimli")
    (version "0.27.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gimli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bpdnkyzi3vp2r0wglwrncbk451zhp46mdl83f6xj4gsmy20kj5n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-0.62.0
  (package
    (name "rust-gix")
    (version "0.62.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dl2098p28ws1564s1vipgrqwcf9qp5s765zczkywj6dni7wccan"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-config" ,rust-gix-config-0.36.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-diff" ,rust-gix-diff-0.43.0)
                        ("rust-gix-dir" ,rust-gix-dir-0.4.0)
                        ("rust-gix-discover" ,rust-gix-discover-0.31.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-macros" ,rust-gix-macros-0.1.4)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-odb" ,rust-gix-odb-0.60.0)
                        ("rust-gix-pack" ,rust-gix-pack-0.50.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-refspec" ,rust-gix-refspec-0.23.0)
                        ("rust-gix-revision" ,rust-gix-revision-0.27.0)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-gix-status" ,rust-gix-status-0.9.0)
                        ("rust-gix-submodule" ,rust-gix-submodule-0.10.0)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-traverse" ,rust-gix-traverse-0.39.0)
                        ("rust-gix-url" ,rust-gix-url-0.27.3)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-actor-0.31.1
  (package
    (name "rust-gix-actor")
    (version "0.31.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-actor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ilcn80rsh6gkzjslvx2m1qbgq0w4i2mf6capbl2xbamwjys7hs5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-attributes-0.22.2
  (package
    (name "rust-gix-attributes")
    (version "0.22.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-attributes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1j7cyx9vkffw8ln7dvc9jmx1rgiixia9mx130156l4xc5vs4iyzf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-kstring" ,rust-kstring-2.0.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-bitmap-0.2.11
  (package
    (name "rust-gix-bitmap")
    (version "0.2.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-bitmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bl7gqqlsdwngvvpgj6cby07cwidf7m0yk6wv473zqflrdkdnwd3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-chunk-0.4.8
  (package
    (name "rust-gix-chunk")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-chunk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lhcmzamr5rlcw8h9bvsjqn9dak1mwj3ng2i1djaf6wnd48pbj25"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-command-0.3.6
  (package
    (name "rust-gix-command")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-command" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xsbllakppwpn3z5qzyivlqa7q068wry2a7dpr3xxcy41l10j07r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-shell-words" ,rust-shell-words-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-commitgraph-0.24.2
  (package
    (name "rust-gix-commitgraph")
    (version "0.24.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-commitgraph" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i0jrf5msqx8ry8z7skj4bxh1ifpfr8knh93i3qlmnl520qh5cgp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-chunk" ,rust-gix-chunk-0.4.8)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-config-0.36.1
  (package
    (name "rust-gix-config")
    (version "0.36.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-config" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rd61kgvdxlvz4d1f5z5zyiydh71jbmsq7jfs1x394z8jrcy103m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-config-value" ,rust-gix-config-value-0.14.6)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-config-value-0.14.6
  (package
    (name "rust-gix-config-value")
    (version "0.14.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-config-value" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0158q089kc151h3n0wk43fg4s28v0cjscll2r1w3mcx9n41n5l7v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-date-0.8.5
  (package
    (name "rust-gix-date")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-date" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1755v9rxk388x8ypinlmw5qcl2q9qxll3kinppghx1s1985162qq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-time" ,rust-time-0.3.23))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-diff-0.43.0
  (package
    (name "rust-gix-diff")
    (version "0.43.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-diff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "009dij9z56ycb8pwzkc9dk29kdqfhdyz9c1zs9n38mxr2m0w5yx5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-dir-0.4.0
  (package
    (name "rust-gix-dir")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-dir" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k7iypm36dff8rj14jska4hkqgz5kcicx3jll1ha1mrs44gkm56n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-discover" ,rust-gix-discover-0.31.0)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-discover-0.31.0
  (package
    (name "rust-gix-discover")
    (version "0.31.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-discover" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cc22hhj3w95jwsl2r6cihys6k65xz03sivyyz510dzdhy8b9fk4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-features-0.38.1
  (package
    (name "rust-gix-features")
    (version "0.38.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-features" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0drbqqn7bxf4zqbnc34zf5ls6ih1flrr79vs6sh4g8i0gl1m8hnv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crc32fast" ,rust-crc32fast-1.3.2)
                        ("rust-flate2" ,rust-flate2-1.0.27)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-prodash" ,rust-prodash-28.0.0)
                        ("rust-sha1-smol" ,rust-sha1-smol-1.0.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-walkdir" ,rust-walkdir-2.4.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-filter-0.11.1
  (package
    (name "rust-gix-filter")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-filter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04pgk370hrb2fj8nfanmdblv6jlxnb1ar4fj7pxx5gv2mw0iy3aw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-packetline-blocking" ,rust-gix-packetline-blocking-0.17.4)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-fs-0.10.2
  (package
    (name "rust-gix-fs")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-fs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f1iwqvscsjvsvx23v974kczz27pmj0v9j1ig1kjj1ciwx04q672"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-glob-0.16.2
  (package
    (name "rust-gix-glob")
    (version "0.16.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-glob" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dbb2pn659ifmpdiaql8ipyjwn4vhhmdwrn3zknxn01wrd1xqav8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-hash-0.14.2
  (package
    (name "rust-gix-hash")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-hash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pjdlxbqxd9lbkccryfw2ghifiq3gz9h8ylliw0va8b16vvpsggr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-faster-hex" ,rust-faster-hex-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-hashtable-0.5.2
  (package
    (name "rust-gix-hashtable")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-hashtable" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hp2m2rvbv0vav5lkq7d7bvx74qrb6w3hnj1rq3aq69wdzhq1pvx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-ignore-0.11.2
  (package
    (name "rust-gix-ignore")
    (version "0.11.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-ignore" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wb33zq9pn9hs4d5abg34hxf8l039aim9xii9p0rz7w2ynsbw3b4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-index-0.32.0
  (package
    (name "rust-gix-index")
    (version "0.32.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-index" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wfk9nfr9cffn3rslnbrjj1nkdayp9dr62vw156fymc6y4n150rk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-filetime" ,rust-filetime-0.2.23)
                        ("rust-fnv" ,rust-fnv-1.0.7)
                        ("rust-gix-bitmap" ,rust-gix-bitmap-0.2.11)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-traverse" ,rust-gix-traverse-0.39.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-lock-13.0.0
  (package
    (name "rust-gix-lock")
    (version "13.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-lock" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qgkzhqcqqlir4c8dmzb3ldniqvdgf9k37c0gf5x3ry59lblc7k5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-macros-0.1.4
  (package
    (name "rust-gix-macros")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cj048i0a5xzqbv99514xfvhxwn833yzaclkmc9pfzp62j7l7zqx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-object-0.42.1
  (package
    (name "rust-gix-object")
    (version "0.42.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lg04riq9gggss7107m1p7clirs84fz2vl4198fdyc10wzx8wkrx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-odb-0.60.0
  (package
    (name "rust-gix-odb")
    (version "0.60.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-odb" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00rmm4kxvj0h0zww4wws3fp3dc859n2294nzzw0lgp7g5wyv9fz8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-pack" ,rust-gix-pack-0.50.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-pack-0.50.0
  (package
    (name "rust-gix-pack")
    (version "0.50.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-pack" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wfakf686z37j110l6ippmrp7jdnl2na3cxahyssczv7qwksv2xm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-clru" ,rust-clru-0.6.1)
                        ("rust-gix-chunk" ,rust-gix-chunk-0.4.8)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-packetline-blocking-0.17.4
  (package
    (name "rust-gix-packetline-blocking")
    (version "0.17.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-packetline-blocking" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jp1fz5mqbikh1xfrxyc1qv57lnh62crg2fmwhr4fa1xi8vl47f3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-faster-hex" ,rust-faster-hex-0.9.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-path-0.10.7
  (package
    (name "rust-gix-path")
    (version "0.10.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-path" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10w7abk2wcp0w2y943sdlsic3xc91d6qr29zjinilsbmykq3qqi3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-pathspec-0.7.3
  (package
    (name "rust-gix-pathspec")
    (version "0.7.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-pathspec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0v29z2dvp89smqi8cb48xs941db8rl2cwm4lf25gc45x7agphyfl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-config-value" ,rust-gix-config-value-0.14.6)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-quote-0.4.12
  (package
    (name "rust-gix-quote")
    (version "0.4.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-quote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zyrl6qchw2f6j25ian699ifzas3a5a2zrhflwjpmym3ksdlzzyb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-ref-0.43.0
  (package
    (name "rust-gix-ref")
    (version "0.43.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-ref" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rbvqwv5prqdi84qkf4xaxj16s7hkabjiwvdbns1q415p5lbljpx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-refspec-0.23.0
  (package
    (name "rust-gix-refspec")
    (version "0.23.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-refspec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cl0z2nbid2jxp9l46q67npqx9p9s0akymxlv7j4z99lb234is6x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-revision" ,rust-gix-revision-0.27.0)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-revision-0.27.0
  (package
    (name "rust-gix-revision")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-revision" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1s5i3hi2pbd8fhsf40ym34i1769ri5yldi7vw8v5vgb935p1jd4y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-revwalk-0.13.0
  (package
    (name "rust-gix-revwalk")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-revwalk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z84i12hk5wqprdxrk31rhhk292bd3zw0cx386pflkl1ms9x79z0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-sec-0.10.6
  (package
    (name "rust-gix-sec")
    (version "0.10.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-sec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18brd8k370ddq19fbq04fkq8ry84b1ar0xz90gfj0fv49ac2gp7x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-status-0.9.0
  (package
    (name "rust-gix-status")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-status" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yg4s7nnnzs298c4v8w6wmakavv97jn8shs85vllwblmsazi7i2h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-filetime" ,rust-filetime-0.2.23)
                        ("rust-gix-diff" ,rust-gix-diff-0.43.0)
                        ("rust-gix-dir" ,rust-gix-dir-0.4.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-submodule-0.10.0
  (package
    (name "rust-gix-submodule")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-submodule" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1v131krfd5avz321qhqvhjdmp2p4bz1iyk6lxhplfqk3cq2ymdsg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-config" ,rust-gix-config-0.36.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-refspec" ,rust-gix-refspec-0.23.0)
                        ("rust-gix-url" ,rust-gix-url-0.27.3)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-tempfile-13.0.0
  (package
    (name "rust-gix-tempfile")
    (version "13.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-tempfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c6w4aacg6bs0nj3lypzp602lhpvrn3ks18d2a3zn05gnxapjcrd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5.4.0)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-trace-0.1.9
  (package
    (name "rust-gix-trace")
    (version "0.1.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-trace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zhm2lwqr070rq3bdn4b1zjs7mn7bhlkfgwfap6xspwi11s2c97r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-traverse-0.39.0
  (package
    (name "rust-gix-traverse")
    (version "0.39.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-traverse" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sranv60mih28lgrrw28hpfh2f6689x878wx406lik5h1719w0pl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-url-0.27.3
  (package
    (name "rust-gix-url")
    (version "0.27.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-url" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kyiah4kjqli6swc1frdlys6vpwi6lwysymy6az0y656vkmjkf0d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-utils-0.1.12
  (package
    (name "rust-gix-utils")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p6lschmdrg1j9cd3rm6q96dyrvivzi2305d7ck1588gzpvjs69m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-fastrand" ,rust-fastrand-2.0.1)
                        ("rust-unicode-normalization" ,rust-unicode-normalization-0.1.22))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-validate-0.8.4
  (package
    (name "rust-gix-validate")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-validate" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i8m4jv53yn8nhp2niifb03p6lcyj1sd8d6x36n5x624c3hcd7z3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-worktree-0.33.0
  (package
    (name "rust-gix-worktree")
    (version "0.33.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-worktree" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1d0hlms63xjrjqkgrb1lixv85jpd8z4j995rmf8mynv9xzgqg6im"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-globset-0.4.14
  (package
    (name "rust-globset")
    (version "0.4.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "globset" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qab0c1drpybgm4nc92lf8b46x0ap44c9y4k23rndgc5bfdkpnjp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-matcher-0.1.7
  (package
    (name "rust-grep-matcher")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-matcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00mcjar5b6y1pwf0gjdywzgh1fnp6jl612n9qznwyfm420d198s7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-regex-0.1.12
  (package
    (name "rust-grep-regex")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0393d2ydvq8qdgss8k7pbnfdns7ramlhxjk7pifdldd8bh9vnj7p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-grep-matcher" ,rust-grep-matcher-0.1.7)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-searcher-0.1.13
  (package
    (name "rust-grep-searcher")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-searcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0m1w35d9wnpv157g0adj3grqw0nkacqxv14mhgc65v4vyvj6llxs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-encoding-rs-io" ,rust-encoding-rs-io-0.1.7)
                        ("rust-grep-matcher" ,rust-grep-matcher-0.1.7)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-memmap2" ,rust-memmap2-0.9.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hashbrown-0.12.3
  (package
    (name "rust-hashbrown")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hashbrown" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1268ka4750pyg2pbgsr43f0289l5zah4arir2k4igx5a8c6fg7la"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hashbrown-0.14.5
  (package
    (name "rust-hashbrown")
    (version "0.14.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hashbrown" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-allocator-api2" ,rust-allocator-api2-0.2.14))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-core-24.3.0
  (package
    (name "rust-helix-core")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-chrono" ,rust-chrono-0.4.38)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-indoc" ,rust-indoc-2.0.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-nucleo" ,rust-nucleo-0.2.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-quickcheck" ,rust-quickcheck-1.0.3)
                        ("rust-regex" ,rust-regex-1.10.4)
                        ("rust-ropey" ,rust-ropey-1.6.1)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-smartstring" ,rust-smartstring-1.0.1)
                        ("rust-textwrap" ,rust-textwrap-0.16.1)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-tree-sitter" ,rust-tree-sitter-0.22.6)
                        ("rust-unicode-general-category" ,rust-unicode-general-category-0.6.0)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-dap-24.3.0
  (package
    (name "rust-helix-dap")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-fern" ,rust-fern-0.6.2)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-event-24.3.0
  (package
    (name "rust-helix-event")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-futures-executor" ,rust-futures-executor-0.3.30)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-loader-24.3.0
  (package
    (name "rust-helix-loader")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-cc" ,rust-cc-1.0.97)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-libloading" ,rust-libloading-0.8.3)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-threadpool" ,rust-threadpool-1.8.1)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-tree-sitter" ,rust-tree-sitter-0.22.6))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-lsp-24.3.0
  (package
    (name "rust-helix-lsp")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-futures-executor" ,rust-futures-executor-0.3.30)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-parsec" ,rust-helix-parsec-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-lsp-types" ,rust-lsp-types-0.95.1)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-parsec-24.3.0
  (package
    (name "rust-helix-parsec")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-stdx-24.3.0
  (package
    (name "rust-helix-stdx")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-regex-cursor" ,rust-regex-cursor-0.1.4)
                        ("rust-ropey" ,rust-ropey-1.6.1)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-which" ,rust-which-6.0.1)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-term-24.3.0
  (package
    (name "rust-helix-term")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-chrono" ,rust-chrono-0.4.38)
                        ("rust-content-inspector" ,rust-content-inspector-0.2.4)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-fern" ,rust-fern-0.6.2)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-grep-regex" ,rust-grep-regex-0.1.12)
                        ("rust-grep-searcher" ,rust-grep-searcher-0.1.13)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-dap" ,rust-helix-dap-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-lsp" ,rust-helix-lsp-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-helix-tui" ,rust-helix-tui-24.3.0)
                        ("rust-helix-vcs" ,rust-helix-vcs-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-ignore" ,rust-ignore-0.4.22)
                        ("rust-indoc" ,rust-indoc-2.0.5)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-nucleo" ,rust-nucleo-0.2.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-open" ,rust-open-5.1.2)
                        ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.10.3)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-signal-hook-tokio" ,rust-signal-hook-tokio-0.3.1)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-termini" ,rust-termini-1.0.0)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (native-inputs (list git))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-tui-24.3.0
  (package
    (name "rust-helix-tui")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-cassowary" ,rust-cassowary-0.3.0)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-termini" ,rust-termini-1.0.0)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-vcs-24.3.0
  (package
    (name "rust-helix-vcs")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-gix" ,rust-gix-0.62.0)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-view-24.3.0
  (package
    (name "rust-helix-view")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-chardetng" ,rust-chardetng-0.1.17)
                        ("rust-clipboard-win" ,rust-clipboard-win-5.3.1)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-dap" ,rust-helix-dap-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-lsp" ,rust-helix-lsp-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-helix-tui" ,rust-helix-tui-24.3.0)
                        ("rust-helix-vcs" ,rust-helix-vcs-24.3.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hermit-abi-0.2.6
  (package
    (name "rust-hermit-abi")
    (version "0.2.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hermit-abi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1iz439yz9qzk3rh9pqx2rz5c4107v3qbd7bppfsbzb1mzr02clgf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-home-0.5.9
  (package
    (name "rust-home")
    (version "0.5.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "home" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19grxyg35rqfd802pcc9ys1q3lafzlcjcv2pl2s5q8xpyr5kblg3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-iana-time-zone-0.1.56
  (package
    (name "rust-iana-time-zone")
    (version "0.1.56")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "iana-time-zone" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z7ky37i5f5djwv7mlkgnjny885v1dm4b9bydqqh9pmp2iqws8h7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-android-system-properties" ,rust-android-system-properties-0.1.5)
                        ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8.4)
                        ("rust-iana-time-zone-haiku" ,rust-iana-time-zone-haiku-0.1.1)
                        ("rust-js-sys" ,rust-js-sys-0.3.61)
                        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.84)
                        ("rust-windows" ,rust-windows-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-iana-time-zone-haiku-0.1.1
  (package
    (name "rust-iana-time-zone-haiku")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "iana-time-zone-haiku" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jix9qrqxclj9r4wkg7d3fr987d77vdg3qy2c5hl4ry19wlaw0q7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cxx" ,rust-cxx-1.0.94)
                        ("rust-cxx-build" ,rust-cxx-build-1.0.94))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-idna-0.5.0
  (package
    (name "rust-idna")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "idna" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xhjrcjqq0l5bpzvdgylvpkgk94panxgsirzhjnnqfdgc4a9nkb3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-unicode-bidi" ,rust-unicode-bidi-0.3.13)
                        ("rust-unicode-normalization" ,rust-unicode-normalization-0.1.22))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ignore-0.4.22
  (package
    (name "rust-ignore")
    (version "0.4.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ignore" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wcaqpi6djqgi1brghrdyw4d5qgnwzhqrqyn4mar4vp677gi0s5l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8.3)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-same-file" ,rust-same-file-1.0.6)
                        ("rust-walkdir" ,rust-walkdir-2.4.0)
                        ("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-imara-diff-0.1.5
  (package
    (name "rust-imara-diff")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "imara-diff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f0caw8bizfhrvyvzqix7ffmfnaynlyz7caljs5ipj8gsw51v379"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-hashbrown" ,rust-hashbrown-0.12.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-indexmap-2.0.0
  (package
    (name "rust-indexmap")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indexmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pdnbvv6gnyxx2li8mks8p00fya3ynmhx3n6infpcy8a4gi7yiym"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-equivalent" ,rust-equivalent-1.0.0)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-indoc-2.0.5
  (package
    (name "rust-indoc")
    (version "2.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indoc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dgjk49rkmx4kjy07k4b90qb5vl89smgb5rcw02n0q0x9ligaj5j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-is-docker-0.2.0
  (package
    (name "rust-is-docker")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is-docker" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1.19.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-is-wsl-0.4.0
  (package
    (name "rust-is-wsl")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is-wsl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-is-docker" ,rust-is-docker-0.2.0)
                        ("rust-once-cell" ,rust-once-cell-1.19.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-itoa-1.0.6
  (package
    (name "rust-itoa")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itoa" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19jc2sa3wvdc29zhgbwf3bayikq4rq18n20dbyg9ahd4hbsxjfj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-js-sys-0.3.61
  (package
    (name "rust-js-sys")
    (version "0.3.61")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "js-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c075apyc5fxp2sbgr87qcvq53pcjxmp05l47lzlhpn5a0hxwpa4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-kstring-2.0.0
  (package
    (name "rust-kstring")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "kstring" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0isp7kmk4q0qxpcd877q77ykgb3ryfbmj18djmnwv8c210sncc7c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-static-assertions" ,rust-static-assertions-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-libc-0.2.154
  (package
    (name "rust-libc")
    (version "0.2.154")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0inkwrnwzrr1kw75x944ihdajrhhldkgg4irx1n19y9gp4w36x5f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-libloading-0.8.3
  (package
    (name "rust-libloading")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libloading" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06awqx9glr3i7mcs6csscr8d6dbd9rrk6yglilmdmsmhns7ijahc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-link-cplusplus-1.0.8
  (package
    (name "rust-link-cplusplus")
    (version "1.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "link-cplusplus" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x84vvg7gn94x9zrvd67602h3ricmhlv19cpl2alzhqkqz4hglpc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-linux-raw-sys-0.4.12
  (package
    (name "rust-linux-raw-sys")
    (version "0.4.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "linux-raw-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mhlla3gk1jgn6mrq9s255rvvq8a1w3yk2vpjiwsd6hmmy1imkf4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-lock-api-0.4.9
  (package
    (name "rust-lock-api")
    (version "0.4.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lock_api" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1py41vk243hwk345nhkn5nw0bd4m03gzjmprdjqq6rg5dwv12l23"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-scopeguard" ,rust-scopeguard-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-log-0.4.21
  (package
    (name "rust-log")
    (version "0.4.21")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "log" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "074hldq1q8rlzq2s2qa8f25hj4s3gpw71w64vdwzjd01a4g8rvch"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-lsp-types-0.95.1
  (package
    (name "rust-lsp-types")
    (version "0.95.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lsp-types" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ra36fd4yr7lf5igfrdvwjx9g87z3a99mrjgzk9nq04viqxd6d4f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-serde-repr" ,rust-serde-repr-0.1.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memchr-2.6.3
  (package
    (name "rust-memchr")
    (version "2.6.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memchr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p6kn2awqf47m3brk0nmajarhwhylg9969il8dm9bq87yxp2s8wg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memmap2-0.9.0
  (package
    (name "rust-memmap2")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memmap2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xckkh1i45g6y2g2lkb6b292pfj2wlrfk2fc4754q7dzga6s7ayy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memoffset-0.9.0
  (package
    (name "rust-memoffset")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memoffset" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0v20ihhdzkfw1jx00a7zjpk2dcp5qjq6lz302nyqamd9c4f4nqss"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-miniz-oxide-0.7.1
  (package
    (name "rust-miniz-oxide")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miniz_oxide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ivl3rbbdm53bzscrd01g60l46lz5krl270487d8lhjvwl5hx0g7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-adler" ,rust-adler-1.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-mio-0.8.11
  (package
    (name "rust-mio")
    (version "0.8.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "034byyl0ardml5yliy1hmvx8arkmn9rv479pid794sm07ia519m4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-wasi" ,rust-wasi-0.11.0+wasi-snapshot-preview1)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-nucleo-0.2.1
  (package
    (name "rust-nucleo")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nucleo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wzx32bz4n68dcd3yw57195sz49hdhv9b75jikr5qiyfpks32lxf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-nucleo-matcher" ,rust-nucleo-matcher-0.2.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-rayon" ,rust-rayon-1.7.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-nucleo-matcher-0.2.0
  (package
    (name "rust-nucleo-matcher")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nucleo-matcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mxxz58acszkgxha4wy459fkcx6f8sh55d803wnid1p25x02nw0v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cov-mark" ,rust-cov-mark-1.1.0)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-traits-0.2.15
  (package
    (name "rust-num-traits")
    (version "0.2.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num-traits" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kfdqqw2ndz0wx2j75v9nbjx7d3mh3150zs4p5595y02rwsdx3jp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-cpus-1.15.0
  (package
    (name "rust-num-cpus")
    (version "1.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_cpus" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fsrjy3arnbcl41vz0gppya8d7d24cpkjgfflr3v8pivl4nrxb0g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.2.6)
                        ("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-threads-0.1.6
  (package
    (name "rust-num-threads")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_threads" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i5vmffsv6g79z869flp1sja69g1gapddjagdw1k3q9f3l2cw698"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-object-0.31.1
  (package
    (name "rust-object")
    (version "0.31.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lb670wallm2i6rzrx2hz1afya4bfjzz6n9zhfw52l1bkxyndnlb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-once-cell-1.19.0
  (package
    (name "rust-once-cell")
    (version "1.19.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "once_cell" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14kvw7px5z96dk4dwdm1r9cqhhy2cyj1l5n5b29mynbb8yr15nrz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-open-5.1.2
  (package
    (name "rust-open")
    (version "5.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "open" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ciy22dh82rdgmmsiai2wksx7sj9abb4ddnmxpqxnpfqapw0z7s4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-is-wsl" ,rust-is-wsl-0.4.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-pathdiff" ,rust-pathdiff-0.2.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-parking-lot-0.12.2
  (package
    (name "rust-parking-lot")
    (version "0.12.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ys2dzz6cysjmwyivwxczl1ljpcf5cj4qmhdj07d5bkc9z5g0jky"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-lock-api" ,rust-lock-api-0.4.9)
                        ("rust-parking-lot-core" ,rust-parking-lot-core-0.9.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-parking-lot-core-0.9.7
  (package
    (name "rust-parking-lot-core")
    (version "0.9.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08cm5gg3a4jmr683x9dgih8vj66yn772kjvc8y1m0flyz6wwnsch"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-redox-syscall" ,rust-redox-syscall-0.2.16)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-windows-sys" ,rust-windows-sys-0.45.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pathdiff-0.2.1
  (package
    (name "rust-pathdiff")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathdiff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pa4dcmb7lwir4himg1mnl97a05b2z0svczg62l8940pbim12dc8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-percent-encoding-2.3.1
  (package
    (name "rust-percent-encoding")
    (version "2.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "percent-encoding" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gi8wgx0dcy8rnv1kywdv98lwcx67hz0a0zwpib5v2i08r88y573"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pin-project-lite-0.2.12
  (package
    (name "rust-pin-project-lite")
    (version "0.2.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pin-project-lite" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "018a7yg2zjcfby4832yw7s9091mgy6syfm369fjpfykjy45ipk0j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pin-utils-0.1.0
  (package
    (name "rust-pin-utils")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pin-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "117ir7vslsl2z1a7qzhws4pd01cg2d3338c47swjyvqv2n60v1wb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-proc-macro2-1.0.76
  (package
    (name "rust-proc-macro2")
    (version "1.0.76")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "136cp0fgl6rg5ljm3b1xpc0bn0lyvagzzmxvbxgk5hxml36mdz4m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-prodash-28.0.0
  (package
    (name "rust-prodash")
    (version "28.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "prodash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y9d16s79168rc5k2djjb16vjcx27yargbfb6xz6m2mq4r6jcjkl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pulldown-cmark-0.10.3
  (package
    (name "rust-pulldown-cmark")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pulldown-cmark" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14rrzqnv6j64j75558m7gzw6lc9b24057v6415smx1z7cvm9p5vn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-unicase" ,rust-unicase-2.6.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-quickcheck-1.0.3
  (package
    (name "rust-quickcheck")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quickcheck" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mjhkfqwrb8mdyxdqr4zzbj1rm5dfx25n9zcc25lb6fxwiw673sq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-rand" ,rust-rand-0.8.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-quote-1.0.35
  (package
    (name "rust-quote")
    (version "1.0.35")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vv8r2ncaz4pqdr78x7f138ka595sp2ncr1sa2plm4zxbsmwj7i9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rand-0.8.5
  (package
    (name "rust-rand")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "013l6931nn7gkc23jz5mm3qdhf93jjf0fg64nz2lp4i51qd8vbrl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-rand-core" ,rust-rand-core-0.6.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rand-core-0.6.4
  (package
    (name "rust-rand-core")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.2.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rayon-1.7.0
  (package
    (name "rust-rayon")
    (version "1.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fzh8w5ds1qjhilll4rkpd3kimw70zi5605wprxcig1pdqczab8x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-either" ,rust-either-1.9.0)
                        ("rust-rayon-core" ,rust-rayon-core-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rayon-core-1.11.0
  (package
    (name "rust-rayon-core")
    (version "1.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13dymrhhdilzpbfh3aylv6ariayqdfk614b3frvwixb6d6yrb3sb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5.8)
                        ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8.3)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16)
                        ("rust-num-cpus" ,rust-num-cpus-1.15.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-redox-syscall-0.2.16
  (package
    (name "rust-redox-syscall")
    (version "0.2.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16jicm96kjyzm802cxdd1k9jmcph0db1a4lhslcnhjsvhp0mhnpv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-redox-syscall-0.4.1
  (package
    (name "rust-redox-syscall")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aiifyz5dnybfvkk4cdab9p2kmphag1yad6iknc7aszlxxldf8j7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-1.10.4
  (package
    (name "rust-regex")
    (version "1.10.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k5sb0h2mkwf51ab0gvv3x38jp1q7wgxf63abfbhi0wwvvgxn5y1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-automata-0.4.5
  (package
    (name "rust-regex-automata")
    (version "0.4.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-automata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1karc80mx15z435rm1jg3sqylnc58nxi15gqypcd1inkzzpqgfav"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-cursor-0.1.4
  (package
    (name "rust-regex-cursor")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-cursor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sbi1xr9201hd5c40779gfnmlnmrb4yqs4jj07d6zbp3znsjfhxf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2)
                        ("rust-ropey" ,rust-ropey-1.6.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-syntax-0.8.2
  (package
    (name "rust-regex-syntax")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-syntax" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17rd2s8xbiyf6lb4aj2nfi44zqlj98g2ays8zzj2vfs743k79360"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ropey-1.6.1
  (package
    (name "rust-ropey")
    (version "1.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ropey" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dckf3likfi1my2ilqwhq2ifsm9iq8cayg6ws7fpa6nd1d11whck"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-str-indices" ,rust-str-indices-0.4.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rustc-demangle-0.1.23
  (package
    (name "rust-rustc-demangle")
    (version "0.1.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc-demangle" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xnbk2bmyzshacjm2g1kd4zzv2y2az14bw3sjccq5qkpmsfvn9nn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rustix-0.38.34
  (package
    (name "rust-rustix")
    (version "0.38.34")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03vkqa2ism7q56rkifyy8mns0wwqrk70f4i4fd53r97p8b05xp3h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-errno" ,rust-errno-0.3.8)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.4.12)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ryu-1.0.13
  (package
    (name "rust-ryu")
    (version "1.0.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ryu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hchlxvjmsz51l06c7r8zwj45pm8bhc3x3czcih27rkx8v03j4zr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-same-file-1.0.6
  (package
    (name "rust-same-file")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "same-file" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-scopeguard-1.1.0
  (package
    (name "rust-scopeguard")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "scopeguard" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kbqm85v43rq92vx7hfiay6pmcga03vrjbbfwqpyj3pwsg3b16nj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-scratch-1.0.5
  (package
    (name "rust-scratch")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "scratch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hchqnh9ggsrisyaaasfqa0r484r75xh2lw87w6fcnz9bh1xp4hp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-1.0.200
  (package
    (name "rust-serde")
    (version "1.0.200")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kyfkis7jg71wak6l2bfpy7gffpx22ha7vgpm8hhwz6njk6gkinx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-derive-1.0.200
  (package
    (name "rust-serde-derive")
    (version "1.0.200")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jrb95pssal86p6kbh188p14893mvgn75mafr74f7kh0jimh8vw5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-json-1.0.116
  (package
    (name "rust-serde-json")
    (version "1.0.116")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_json" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04r81f5myl41zrsyghnbmbl39c4n3azldb9zxfafnzyi4rqxn5ry"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-ryu" ,rust-ryu-1.0.13)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-repr-0.1.12
  (package
    (name "rust-serde-repr")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_repr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aqcsjq5wc51qnflfqzkkrh5ckcmi3c7ypx2amg0i1664088iv5w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-spanned-0.6.5
  (package
    (name "rust-serde-spanned")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_spanned" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hgh6s3jjwyzhfk3xwb6pnnr1misq9nflwq0f026jafi37s24dpb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-sha1-smol-1.0.0
  (package
    (name "rust-sha1-smol")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sha1_smol" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04nhbhvsk5ms1zbshs80iq5r1vjszp2xnm9f0ivj38q3dhc4f6mf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-shell-words-1.1.0
  (package
    (name "rust-shell-words")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "shell-words" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1plgwx8r0h5ismbbp6cp03740wmzgzhip85k5hxqrrkaddkql614"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-0.3.17
  (package
    (name "rust-signal-hook")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0098nsah04spqf3n8niirmfym4wsdgjl57c78kmzijlq8xymh8c6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-signal-hook-registry" ,rust-signal-hook-registry-1.4.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-mio-0.2.3
  (package
    (name "rust-signal-hook-mio")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-mio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bwrrbd0lhwzlf63708vyzlh20693s5bg5s0ak6adjbyycajxb99"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-registry-1.4.1
  (package
    (name "rust-signal-hook-registry")
    (version "1.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-registry" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18crkkw5k82bvcx088xlf5g4n3772m24qhzgfan80nda7d3rn8nq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-tokio-0.3.1
  (package
    (name "rust-signal-hook-tokio")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-tokio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07nggsi80jv39xisdk2r7cik7hx2d2qa2sivvqkpxqxidzvl2ci1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-slab-0.4.8
  (package
    (name "rust-slab")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slab" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bgwxig8gkqp6gz8rvrpdj6qwa10karnsxwx7wsj5ay8kcf3aa35"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-slotmap-1.0.7
  (package
    (name "rust-slotmap")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slotmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0amqb2fn9lcy1ri0risblkcp88dl0rnfmynw7lx0nqwza77lmzyv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smallvec-1.13.2
  (package
    (name "rust-smallvec")
    (version "1.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smallvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rsw5samawl3wsw6glrsb127rx6sh89a8wyikicw6dkdcjd1lpiw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smartstring-1.0.1
  (package
    (name "rust-smartstring")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smartstring" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0agf4x0jz79r30aqibyfjm1h9hrjdh0harcqcvb2vapv7rijrdrz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-static-assertions" ,rust-static-assertions-1.1.0)
                        ("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smawk-0.3.1
  (package
    (name "rust-smawk")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smawk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hv0q1mw1r1brk7v3g4a80j162p7g1dri4bdidykrakzfqjd4ypn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-socket2-0.5.5
  (package
    (name "rust-socket2")
    (version "0.5.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "socket2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sgq315f1njky114ip7wcy83qlphv9qclprfjwvxcpfblmcsqpvv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-static-assertions-1.1.0
  (package
    (name "rust-static-assertions")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "static_assertions" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-str-indices-0.4.1
  (package
    (name "rust-str-indices")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "str_indices" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pfnfjmkandxqmq04nqa5nwgsggq8jp8z4xivr9fqhk8j9j620jz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-syn-1.0.109
  (package
    (name "rust-syn")
    (version "1.0.109")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-syn-2.0.48
  (package
    (name "rust-syn")
    (version "2.0.48")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gqgfygmrxmp8q32lia9p294kdd501ybn6kn2h4gqza0irik2d8g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tempfile-3.10.1
  (package
    (name "rust-tempfile")
    (version "3.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tempfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wdzz35ri168jn9al4s1g2rnsrr5ci91khgarc2rvpb3nappzdw5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-fastrand" ,rust-fastrand-2.0.1)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-termcolor-1.2.0
  (package
    (name "rust-termcolor")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termcolor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dmrbsljxpfng905qkaxljlwjhv8h0i3969cbiv5rb7y8a4wymdy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-termini-1.0.0
  (package
    (name "rust-termini")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termini" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n8dvbwkp2k673xqwivb01iqg5ir91zgpwhwngpcb2yrgpc43m1a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-home" ,rust-home-0.5.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-textwrap-0.16.1
  (package
    (name "rust-textwrap")
    (version "0.16.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fgqn3mg9gdbjxwfxl76fg0qiq53w3mk4hdh1x40jylnz39k9m13"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-smawk" ,rust-smawk-0.3.1)
                        ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1.5)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-thiserror-1.0.60
  (package
    (name "rust-thiserror")
    (version "1.0.60")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "067wi7pb1zn9jhhk82w0ppmvjwa00nwkp4m9j77rvpaqra1r17jp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror-impl" ,rust-thiserror-impl-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-thiserror-impl-1.0.60
  (package
    (name "rust-thiserror-impl")
    (version "1.0.60")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror-impl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0945q2hk1rqdzjz2zqakxbddwm4h26k5c0wdncdarhvfq10h0iz2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-threadpool-1.8.1
  (package
    (name "rust-threadpool")
    (version "1.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "threadpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1amgfyzvynbm8pacniivzq9r0fh3chhs7kijic81j76l6c5ycl6h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-num-cpus" ,rust-num-cpus-1.15.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-0.3.23
  (package
    (name "rust-time")
    (version "0.3.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ihlz293f792cd7v7qhpkx8rqkzs0fr77bzddw8msfpld309kqsr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-num-threads" ,rust-num-threads-0.1.6)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-time-core" ,rust-time-core-0.1.1)
                        ("rust-time-macros" ,rust-time-macros-0.2.10))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-core-0.1.1
  (package
    (name "rust-time-core")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yz6d246zbmx9v6wpfg1jyfjlsgagirz7km96pr1mp6snkpzn03k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-macros-0.2.10
  (package
    (name "rust-time-macros")
    (version "0.2.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i566vxybz24i2rdax2d0m86fk2m45rarrapnxk6gj7kjyl1bfln"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-time-core" ,rust-time-core-0.1.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tinyvec-1.6.0
  (package
    (name "rust-tinyvec")
    (version "1.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tinyvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0l6bl2h62a5m44jdnpn7lmj14rd44via8180i7121fvm73mmrk47"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-tinyvec-macros" ,rust-tinyvec-macros-0.1.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tinyvec-macros-0.1.1
  (package
    (name "rust-tinyvec-macros")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tinyvec_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "081gag86208sc3y6sdkshgw3vysm5d34p431dzw0bshz66ncng0z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-1.37.0
  (package
    (name "rust-tokio")
    (version "1.37.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11v7qhvpwsf976frqgrjl1jy308bdkxq195gb38cypx7xkzypnqs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3.68)
                        ("rust-bytes" ,rust-bytes-1.4.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-num-cpus" ,rust-num-cpus-1.15.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-signal-hook-registry" ,rust-signal-hook-registry-1.4.1)
                        ("rust-socket2" ,rust-socket2-0.5.5)
                        ("rust-tokio-macros" ,rust-tokio-macros-2.2.0)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-macros-2.2.0
  (package
    (name "rust-tokio-macros")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fwjy4vdx1h9pi4g2nml72wi0fr27b5m954p13ji9anyy8l1x2jv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-stream-0.1.15
  (package
    (name "rust-tokio-stream")
    (version "0.1.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio-stream" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1brpbsqyg8yfmfc4y0j9zxvc8xsxjc31d48kb0g6jvpc1fgchyi6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-0.8.12
  (package
    (name "rust-toml")
    (version "0.8.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18rs8cbzmapwcxf0lpdwz84fmsgp9h5vv6xay5d4m2r0x12ibpg9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-spanned" ,rust-serde-spanned-0.6.5)
                        ("rust-toml-datetime" ,rust-toml-datetime-0.6.5)
                        ("rust-toml-edit" ,rust-toml-edit-0.22.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-datetime-0.6.5
  (package
    (name "rust-toml-datetime")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml_datetime" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wds4pm2cn6agd38f0ivm65xnc7c7bmk9m0fllcaq82nd3lz8l1m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-edit-0.22.8
  (package
    (name "rust-toml-edit")
    (version "0.22.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml_edit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kcnmshwvh0afl87358d1ccrqb7fcanyam3jhrvs06qc3s0ij8n1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2.0.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-spanned" ,rust-serde-spanned-0.6.5)
                        ("rust-toml-datetime" ,rust-toml-datetime-0.6.5)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tree-sitter-0.22.6
  (package
    (name "rust-tree-sitter")
    (version "0.22.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tree-sitter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jkda5n43m7cxmx2h7l20zxc74nf9v1wpm66gvgxrm5drscw8z6z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-regex" ,rust-regex-1.10.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicase-2.6.0
  (package
    (name "rust-unicase")
    (version "2.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicase" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xmlbink4ycgxrkjspp0mf7pghcx4m7vxq7fpfm04ikr2zk7pwsh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-bidi-0.3.13
  (package
    (name "rust-unicode-bidi")
    (version "0.3.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-bidi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q0l7rdkiq54pan7a4ama39dgynaf1mnjj1nddrq1w1zayjqp24j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-bom-2.0.2
  (package
    (name "rust-unicode-bom")
    (version "2.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-bom" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lh5ckmw59v908mddgfgv19vv6yb0sm08z8adppd3m7hr5q0rscq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-general-category-0.6.0
  (package
    (name "rust-unicode-general-category")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-general-category" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rv9715c94gfl0hzy4f2a9lw7i499756bq2968vqwhr1sb0wi092"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-ident-1.0.8
  (package
    (name "rust-unicode-ident")
    (version "1.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-ident" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x4v4v95fv9gn5zbpm23sa9awjvmclap1wh1lmikmw9rna3llip5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-linebreak-0.1.5
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-linebreak" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07spj2hh3daajg335m4wdav6nfkl0f6c0q72lc37blr97hych29v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-normalization-0.1.22
  (package
    (name "rust-unicode-normalization")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-normalization" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08d95g7b1irc578b2iyhzv4xhsa4pfvwsqxcl9lbcpabzkq16msw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-tinyvec" ,rust-tinyvec-1.6.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-segmentation-1.11.0
  (package
    (name "rust-unicode-segmentation")
    (version "1.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-segmentation" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00kjpwp1g8fqm45drmwivlacn3y9jx73bvs09n6s3x73nqi7vj6l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-width-0.1.12
  (package
    (name "rust-unicode-width")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-width" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mk6mybsmi5py8hf8zy9vbgs4rw4gkdqdq3gzywd9kwf2prybxb8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-url-2.5.0
  (package
    (name "rust-url")
    (version "2.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "url" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cs65961miawncdg2z20171w0vqrmraswv2ihdpd8lxp7cp31rii"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-form-urlencoded" ,rust-form-urlencoded-1.2.1)
                        ("rust-idna" ,rust-idna-0.5.0)
                        ("rust-percent-encoding" ,rust-percent-encoding-2.3.1)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-version-check-0.9.4
  (package
    (name "rust-version-check")
    (version "0.9.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "version_check" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gs8grwdlgh0xq660d7wr80x14vxbizmd8dbp29p2pdncx8lp1s9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-walkdir-2.4.0
  (package
    (name "rust-walkdir")
    (version "2.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "walkdir" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vjl9fmfc4v8k9ald23qrpcbyb8dl1ynyq8d516cm537r1yqa7fp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-same-file" ,rust-same-file-1.0.6)
                        ("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasi-0.11.0+wasi-snapshot-preview1
  (package
    (name "rust-wasi")
    (version "0.11.0+wasi-snapshot-preview1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08z4hxwkpdpalxjps1ai9y7ihin26y9f476i53dv98v45gkqg3cw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-0.2.84
  (package
    (name "rust-wasm-bindgen")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fx5gh0b4n6znfa3blz92wn1k4bbiysyq9m95s7rn3gk46ydry1i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-backend-0.2.84
  (package
    (name "rust-wasm-bindgen-backend")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-backend" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ffc0wb293ha56i66f830x7f8aa2xql69a21lrasy1ncbgyr1klm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3.12.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-1.0.109)
                        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-macro-0.2.84
  (package
    (name "rust-wasm-bindgen-macro")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1idlq28awqhq8rclb22rn5xix82w9a4rgy11vkapzhzd1dygf8ac"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-quote" ,rust-quote-1.0.35)
                        ("rust-wasm-bindgen-macro-support" ,rust-wasm-bindgen-macro-support-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-macro-support-0.2.84
  (package
    (name "rust-wasm-bindgen-macro-support")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro-support" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xm56lpi0rihh8ny7x085dgs3jdm47spgqflb98wghyadwq83zra"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-1.0.109)
                        ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2.84)
                        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-shared-0.2.84
  (package
    (name "rust-wasm-bindgen-shared")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-shared" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pcvk1c97r1pprzfaxxn359r0wqg5bm33ylbwgjh8f4cwbvzwih0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-which-6.0.1
  (package
    (name "rust-which")
    (version "6.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "which" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mz0vijj9qvsmfqkjqw3wf8zqn19p2x0gg7gzfnhaa1bibsy84c2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-either" ,rust-either-1.9.0)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-winsafe" ,rust-winsafe-0.0.19))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-0.3.9
  (package
    (name "rust-winapi")
    (version "0.3.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-i686-pc-windows-gnu" ,rust-winapi-i686-pc-windows-gnu-0.4.0)
                        ("rust-winapi-x86-64-pc-windows-gnu" ,rust-winapi-x86-64-pc-windows-gnu-0.4.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (package
    (name "rust-winapi-i686-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-i686-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-util-0.1.5
  (package
    (name "rust-winapi-util")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y71bp7f6d536czj40dhqk0d55wfbbwqfp2ymqf1an5ibgl6rv3h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (package
    (name "rust-winapi-x86-64-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-x86_64-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-0.48.0
  (package
    (name "rust-windows")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03vh89ilnxdxdh0n9np4ns4m10fvm93h3b0cc05ipg3qq1mqi1p6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.45.0
  (package
    (name "rust-windows-sys")
    (version "0.45.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1l36bcqm4g89pknfp8r9rl1w4bn017q6a8qlx8viv0xjxzjkna3m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.42.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.48.0
  (package
    (name "rust-windows-sys")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.52.0
  (package
    (name "rust-windows-sys")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gd3v4ji88490zgb6b5mq5zgbvwv7zx1ibn8v3x83rwcdbryaar8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.42.2
  (package
    (name "rust-windows-targets")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wfhnib2fisxlx8c507dbmh97kgij4r6kcxdi0f9nk6l1k080lcf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.42.2)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.42.2)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.42.2)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.42.2)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.42.2)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.42.2)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.42.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.48.0
  (package
    (name "rust-windows-targets")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mfzg94w0c8h4ya9sva7rra77f3iy1712af9b6bwg03wrpqbc7kv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.48.0)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.48.0)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.48.0)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.48.0)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.48.0)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.48.0)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.52.0
  (package
    (name "rust-windows-targets")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kg7a27ynzw8zz3krdgy6w5gbqcji27j1sz4p7xk2j5j8082064a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52.0)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52.0)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52.0)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52.0)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52.0)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52.0)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.42.2
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y4q0qmvl0lvp7syxvfykafvmwal5hrjb4fmv04bqs0bawc52yjr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.48.0
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g71yxi61c410pwzq05ld7si4p9hyx6lf5fkw21sinvr3cp5gbli"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.52.0
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1shmn1kbdc0bpphcxz0vlph96bxz0h1jlmh93s9agf2dbpin8xyb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.42.2
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hsdikjl5sa1fva5qskpwlxzpc5q9l909fpl1w6yy1hglrj8i3p0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.48.0
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wvwipchhywcjaw73h998vzachf668fpqccbhrxzrz5xszh2gvxj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.52.0
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vvmy1ypvzdvxn9yf0b8ygfl85gl2gpcyvsvqppsmlpisil07amv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.42.2
  (package
    (name "rust-windows-i686-gnu")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kx866dfrby88lqs9v1vgmrkk1z6af9lhaghh5maj7d4imyr47f6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.48.0
  (package
    (name "rust-windows-i686-gnu")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hd2v9kp8fss0rzl83wzhw0s5z8q1b4875m6s1phv0yvlxi1jak2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.52.0
  (package
    (name "rust-windows-i686-gnu")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04zkglz4p3pjsns5gbz85v4s5aw102raz4spj4b0lmm33z5kg1m2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.42.2
  (package
    (name "rust-windows-i686-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q0h9m2aq1pygc199pa5jgc952qhcnf0zn688454i7v4xjv41n24"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.48.0
  (package
    (name "rust-windows-i686-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "004fkyqv3if178xx9ksqc4qqv8sz8n72mpczsr2vy8ffckiwchj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.52.0
  (package
    (name "rust-windows-i686-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16kvmbvx0vr0zbgnaz6nsks9ycvfh5xp05bjrhq65kj623iyirgz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.42.2
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0dnbf2xnp3xrvy8v9mgs3var4zq9v9yh9kv79035rdgyp2w15scd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.48.0
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cblz5m6a8q6ha09bz4lz233dnq5sw2hpra06k9cna3n3xk8laya"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.52.0
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zdy4qn178sil5sdm63lm7f0kkcjg6gvdwmcprd2yjmwn8ns6vrx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.42.2
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18wl9r8qbsl475j39zvawlidp1bsbinliwfymr43fibdld31pm16"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.48.0
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lxryz3ysx0145bf3i38jkr7f9nxiym8p3syklp8f20yyk0xp5kq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.52.0
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17lllq4l2k1lqgcnw1cccphxp9vs7inq99kjlm2lfl9zklg7wr8s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.42.2
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w5r0q0yzx827d10dpjza2ww0j8iajqhmb54s735hhaj66imvv4s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.48.0
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ipr1knzj2rwjygyllfi5mkd0ihnbi3r61gag5n2jgyk5bmyl8s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.52.0
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "012wfq37f18c09ij5m6rniw7xxn5fcvrxbqd0wd8vgnl3hfn9yfz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winnow-0.6.5
  (package
    (name "rust-winnow")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winnow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f0m48kfdvds456b1i1qd6ia9w3mckk2jf4q6z94snpdcw741ynz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winsafe-0.0.19
  (package
    (name "rust-winsafe")
    (version "0.0.19")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winsafe" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-xtask-24.3.0
  (package
    (name "rust-xtask")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:phases (modify-phases %standard-phases
                                (add-after 'unpack 'chdir
                                           (lambda _
                                             (chdir "xtask"))))
        #:cargo-inputs (("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-term" ,rust-helix-term-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-toml" ,rust-toml-0.8.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-zerocopy-0.7.31
  (package
    (name "rust-zerocopy")
    (version "0.7.31")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gcfyrmlrhmsz16qxjp2qzr6vixyaw1p04zl28f08lxkvfz62h0w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-zerocopy-derive" ,rust-zerocopy-derive-0.7.31))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-zerocopy-derive-0.7.31
  (package
    (name "rust-zerocopy-derive")
    (version "0.7.31")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06k0zk4x4n9s1blgxmxqb1g81y8q334aayx61gyy6v9y1dajkhdk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define helix
  (package
    (name "helix")
    (version %helix-version)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (patches
          (search-patches
            "helix-disable-grammar-fetch.patch"
            "helix-remove-unsupported-grammars.patch"))
        (modules '((guix build utils)))
        (snippet
          '(begin
             (delete-file-recursively "Cargo.lock")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
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
             (add-after 'unpack 'unpack-additional-sources
                        (lambda _
                          (for-each make-file-writable (find-files "."))
                          (for-each
                            (match-lambda
                              ((dst src)
                               (let* ((dest (string-append "runtime/grammars/sources/" dst)))
                                 (copy-recursively src dest)
                                 (for-each make-file-writable (find-files dest)))))
                            '(("ada" #$grammar-ada)
                              ("adl" #$grammar-adl)
                              ("agda" #$grammar-agda)
                              ("astro" #$grammar-astro)
                              ("awk" #$grammar-awk)
                              ("bash" #$grammar-bash)
                              ("bass" #$grammar-bass)
                              ("beancount" #$grammar-beancount)
                              ("bibtex" #$grammar-bibtex)
                              ("bicep" #$grammar-bicep)
                              ("bitbake" #$grammar-bitbake)
                              ("blade" #$grammar-blade)
                              ("blueprint" #$grammar-blueprint)
                              ("c" #$grammar-c)
                              ("capnp" #$grammar-capnp)
                              ("cel" #$grammar-cel)
                              ("clojure" #$grammar-clojure)
                              ("cmake" #$grammar-cmake)
                              ("comment" #$grammar-comment)
                              ("cpon" #$grammar-cpon)
                              ("cpp" #$grammar-cpp)
                              ("css" #$grammar-css)
                              ("cue" #$grammar-cue)
                              ("d" #$grammar-d)
                              ("dart" #$grammar-dart)
                              ("dbml" #$grammar-dbml)
                              ("devicetree" #$grammar-devicetree)
                              ("dhall" #$grammar-dhall)
                              ("diff" #$grammar-diff)
                              ("dockerfile" #$grammar-dockerfile)
                              ("dot" #$grammar-dot)
                              ("dtd" #$grammar-dtd)
                              ("earthfile" #$grammar-earthfile)
                              ("edoc" #$grammar-edoc)
                              ("eex" #$grammar-eex)
                              ("elixir" #$grammar-elixir)
                              ("elm" #$grammar-elm)
                              ("elvish" #$grammar-elvish)
                              ("erlang" #$grammar-erlang)
                              ("esdl" #$grammar-esdl)
                              ("fidl" #$grammar-fidl)
                              ("fish" #$grammar-fish)
                              ("forth" #$grammar-forth)
                              ("fortran" #$grammar-fortran)
                              ("fsharp" #$grammar-fsharp)
                              ("gas" #$grammar-gas)
                              ("gdscript" #$grammar-gdscript)
                              ("gitattributes" #$grammar-gitattributes)
                              ("gitignore" #$grammar-gitignore)
                              ("gleam" #$grammar-gleam)
                              ("glimmer" #$grammar-glimmer)
                              ("glsl" #$grammar-glsl)
                              ("gn" #$grammar-gn)
                              ("go" #$grammar-go)
                              ("gotmpl" #$grammar-gotmpl)
                              ("gowork" #$grammar-gowork)
                              ("graphql" #$grammar-graphql)
                              ("groovy" #$grammar-groovy)
                              ("haskell" #$grammar-haskell)
                              ("hcl" #$grammar-hcl)
                              ("heex" #$grammar-heex)
                              ("hocon" #$grammar-hocon)
                              ("hoon" #$grammar-hoon)
                              ("hosts" #$grammar-hosts)
                              ("html" #$grammar-html)
                              ("hurl" #$grammar-hurl)
                              ;; ("hyprlang" #$grammar-hyprlang)))))
                              ("iex" #$grammar-iex)
                              ("ini" #$grammar-ini)
                              ("inko" #$grammar-inko)
                              ("java" #$grammar-java)
                              ("javascript" #$grammar-javascript)
                              ("jinja2" #$grammar-jinja2)
                              ("jsdoc" #$grammar-jsdoc)
                              ("json" #$grammar-json)
                              ("json5" #$grammar-json5)
                              ("jsonnet" #$grammar-jsonnet)
                              ("julia" #$grammar-julia)
                              ("just" #$grammar-just)
                              ("kdl" #$grammar-kdl)
                              ("koka" #$grammar-koka)
                              ("kotlin" #$grammar-kotlin)
                              ("latex" #$grammar-latex)
                              ("ld" #$grammar-ld)
                              ("ldif" #$grammar-ldif)
                              ("lean" #$grammar-lean)
                              ("ledger" #$grammar-ledger)
                              ("llvm" #$grammar-llvm)
                              ("log" #$grammar-log)
                              ("lpf" #$grammar-lpf)
                              ("lua" #$grammar-lua)
                              ("make" #$grammar-make)
                              ("markdoc" #$grammar-markdoc)
                              ("markdown" #$grammar-markdown)
                              ("markdown_inline" #$grammar-markdown_inline)
                              ("matlab" #$grammar-matlab)
                              ("mermaid" #$grammar-mermaid)
                              ("meson" #$grammar-meson)
                              ;; ("move" #$grammar-move)
                              ("nasm" #$grammar-nasm)
                              ("nickel" #$grammar-nickel)
                              ("nim" #$grammar-nim)
                              ("nix" #$grammar-nix)
                              ("nu" #$grammar-nu)
                              ("ocaml" #$grammar-ocaml)
                              ("odin" #$grammar-odin)
                              ("ohm" #$grammar-ohm)
                              ("opencl" #$grammar-opencl)
                              ("openscad" #$grammar-openscad)
                              ("org" #$grammar-org)
                              ("pascal" #$grammar-pascal)
                              ("passwd" #$grammar-passwd)
                              ("pem" #$grammar-pem)
                              ("perl" #$grammar-perl)
                              ("pest" #$grammar-pest)
                              ("php" #$grammar-php)
                              ("pkl" #$grammar-pkl)
                              ("po" #$grammar-po)
                              ("pod" #$grammar-pod)
                              ("ponylang" #$grammar-ponylang)
                              ("powershell" #$grammar-powershell)
                              ("prisma" #$grammar-prisma)
                              ("protobuf" #$grammar-protobuf)
                              ("prql" #$grammar-prql)
                              ("purescript" #$grammar-purescript)
                              ("python" #$grammar-python)
                              ;; ("qmljs" #$grammar-qmljs)
                              ("r" #$grammar-r)
                              ("regex" #$grammar-regex)
                              ("rego" #$grammar-rego)
                              ("rescript" #$grammar-rescript)
                              ("robot" #$grammar-robot)
                              ("ron" #$grammar-ron)
                              ("rst" #$grammar-rst)
                              ("ruby" #$grammar-ruby)
                              ("rust" #$grammar-rust)
                              ("scala" #$grammar-scala)
                              ("scheme" #$grammar-scheme)
                              ("scss" #$grammar-scss)
                              ("slint" #$grammar-slint)
                              ("smali" #$grammar-smali)
                              ("smithy" #$grammar-smithy)
                              ("sml" #$grammar-sml)
                              ("solidity" #$grammar-solidity)
                              ("spicedb" #$grammar-spicedb)
                              ("sql" #$grammar-sql)
                              ("sshclientconfig" #$grammar-sshclientconfig)
                              ("strace" #$grammar-strace)
                              ("supercollider" #$grammar-supercollider)
                              ("svelte" #$grammar-svelte)
                              ("sway" #$grammar-sway)
                              ("swift" #$grammar-swift)
                              ("t32" #$grammar-t32)
                              ("tablegen" #$grammar-tablegen)
                              ("tact" #$grammar-tact)
                              ("task" #$grammar-task)
                              ("tcl" #$grammar-tcl)
                              ("templ" #$grammar-templ)
                              ("todotxt" #$grammar-todotxt)
                              ("toml" #$grammar-toml)
                              ("tsq" #$grammar-tsq)
                              ("tsx" #$grammar-tsx)
                              ;; ("twig" #$grammar-twig)
                              ("typescript" #$grammar-typescript)
                              ("typst" #$grammar-typst)
                              ("ungrammar" #$grammar-ungrammar)
                              ("unison" #$grammar-unison)
                              ("uxntal" #$grammar-uxntal)
                              ("v" #$grammar-v)
                              ("vala" #$grammar-vala)
                              ("verilog" #$grammar-verilog)
                              ("vhdl" #$grammar-vhdl)
                              ("vhs" #$grammar-vhs)
                              ("vue" #$grammar-vue)
                              ("wast" #$grammar-wast)
                              ("wat" #$grammar-wat)
                              ("wgsl" #$grammar-wgsl)
                              ("wit" #$grammar-wit)
                              ("xit" #$grammar-xit)
                              ("xml" #$grammar-xml)
                              ("xtc" #$grammar-xtc)
                              ("yaml" #$grammar-yaml)
                              ("yuck" #$grammar-yuck)
                              ("zig" #$grammar-zig)
                              ;; ("janet-simple" #$grammar-janet-simple)
                              ("c-sharp" #$grammar-c-sharp)
                              ("gomod" #$grammar-gomod)
                              ("php-only" #$grammar-php-only)
                              ("ocaml-interface" #$grammar-ocaml-interface)
                              ("haskell-persistent" #$grammar-haskell-persistent)
                              ("llvm-mir" #$grammar-llvm-mir)
                              ("git-commit" #$grammar-git-commit)
                              ("git-rebase" #$grammar-git-rebase)
                              ("git-config" #$grammar-git-config)
                              ("embedded-template" #$grammar-embedded-template)
                              ("godot-resource" #$grammar-godot-resource)))))
             (replace 'install
                      (lambda* (#:key outputs #:allow-other-keys)
                               (let* ((out (assoc-ref outputs "out"))
                                      (bin (string-append out "/bin"))
                                      (hx (string-append bin "/hx"))
                                      (share (string-append out "/usr/share/helix"))
                                      (runtime (string-append share "/runtime")))
                                 (install-file "target/release/hx" bin)
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
                        ("rust-xtask"        ,rust-xtask-24.3.0))))
    (native-inputs (list git))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

helix
;;; Copyright © 2024 Murilo <murilo@disroot.org>
;;;
;;; This file is NOT part of GNU Guix.

(define-module (saayix packages rust helix)
  #:use-module (saayix packages)
  #:use-module (srfi srfi-1)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages version-control)
  #:export (helix))

(define %helix-version "24.3.0")

(define (make-grammar-source language git-url revision hash)
  (origin
    (method git-fetch)
    (uri (git-reference
          (url git-url)
          (commit revision)))
    (file-name (git-file-name (string-append "grammar-" language) %helix-version))
    (sha256
     (base32 hash))))

(define grammar-ada
  (make-grammar-source "ada"
                       "https://github.com/briot/tree-sitter-ada"
                       "ba0894efa03beb70780156b91e28c716b7a4764d"
                       "0d2fn0qq6mzbpqcr5ws2kcrkskkyj6skjad4aiyxcbdxqcfq4k6z"))
(define grammar-adl
  (make-grammar-source "adl"
                       "https://github.com/adl-lang/tree-sitter-adl"
                       "2787d04beadfbe154d3f2da6e98dc45a1b134bbf"
                       "1b0zgc00n5fv84bwbpnwlk28qi9mn1r6cghfcajs1wpj7172v0c1"))
(define grammar-agda
  (make-grammar-source "agda"
                       "https://github.com/tree-sitter/tree-sitter-agda"
                       "c21c3a0f996363ed17b8ac99d827fe5a4821f217"
                       "0y0dym2wr8hn2pg1kys1bb87cndp5qbxkvmc0vd22zfwrkghjp8i"))
(define grammar-astro
  (make-grammar-source "astro"
                       "https://github.com/virchau13/tree-sitter-astro"
                       "947e93089e60c66e681eba22283f4037841451e7"
                       "0qh9swlff8kwf46vql19m3rk08xgjfz3vpwfzdrawvlgwkxy4ndb"))
(define grammar-awk
  (make-grammar-source "awk"
                       "https://github.com/Beaglefoot/tree-sitter-awk"
                       "a799bc5da7c2a84bc9a06ba5f3540cf1191e4ee3"
                       "0rw9p60vf2119vvjqnr4an85bryr8nq7jh0pkhzwpy7xh0nszy83"))
(define grammar-bash
  (make-grammar-source "bash"
                       "https://github.com/tree-sitter/tree-sitter-bash"
                       "f8fb3274f72a30896075585b32b0c54cad65c086"
                       "1aagb3ckcngql1kmlw83bkbh7mi0c46jlhn3bmbli4rnprhnlgdj"))
(define grammar-bass
  (make-grammar-source "bass"
                       "https://github.com/vito/tree-sitter-bass"
                       "501133e260d768ed4e1fd7374912ed5c86d6fd90"
                       "14zs56rb53qzkx9l9hgpn41q2nycrrdh2jdbybq55w34gcgg6sh2"))
(define grammar-beancount
  (make-grammar-source "beancount"
                       "https://github.com/polarmutex/tree-sitter-beancount"
                       "f3741a3a68ade59ec894ed84a64673494d2ba8f3"
                       "04dlhffhzg6gaj6i5ias20zshhrapm98lryrdv5f6sfx54b7gmjs"))
(define grammar-bibtex
  (make-grammar-source "bibtex"
                       "https://github.com/latex-lsp/tree-sitter-bibtex"
                       "ccfd77db0ed799b6c22c214fe9d2937f47bc8b34"
                       "0m7f3dkqbmy8x1bhl11m8f4p6n76wfvh99rp46zrqv39355nw1y2"))
(define grammar-bicep
  (make-grammar-source "bicep"
                       "https://github.com/the-mikedavis/tree-sitter-bicep"
                       "d8e097fcfa143854861ef737161163a09cc2916b"
                       "1zm5i4723afmd95lg1xlrh0v2rdy116l87m4jcdfzzynls57zdhp"))
(define grammar-bitbake
  (make-grammar-source "bitbake"
                       "https://github.com/tree-sitter-grammars/tree-sitter-bitbake"
                       "10bacac929ff36a1e8f4056503fe4f8717b21b94"
                       "1pfma482nyc88x56v6l6rmhdy44qbwibrqri38wkkh66a1fka8ix"))
(define grammar-blade
  (make-grammar-source "blade"
                       "https://github.com/EmranMR/tree-sitter-blade"
                       "4c66efe1e05c639c555ee70092021b8223d2f440"
                       "1gwh9smid03c4ai5whp6v1d6zjz77v9g5qns5039hczrvkwrc000"))
(define grammar-blueprint
  (make-grammar-source "blueprint"
                       "https://gitlab.com/gabmus/tree-sitter-blueprint"
                       "863cea9f83ad5637300478e0559262f1e791684b"
                       "13pc6hy1b0c0hbzcg92zxi23j7jx1l2npmwynbmfchzql5v31fa1"))
(define grammar-c
  (make-grammar-source "c"
                       "https://github.com/tree-sitter/tree-sitter-c"
                       "7175a6dd5fc1cee660dce6fe23f6043d75af424a"
                       "1w03r4l773ki4iq2xxsc2pqxf3pjsbybq3xq4glmnsihgylibn8v"))
(define grammar-c-sharp
  (make-grammar-source "c-sharp"
                       "https://github.com/tree-sitter/tree-sitter-c-sharp"
                       "5b60f99545fea00a33bbfae5be956f684c4c69e2"
                       "1dzfnj9b5xgx0av4xyvd71i8bj3hxaq97s91np5jzd2vjvbvw7p1"))
(define grammar-capnp
  (make-grammar-source "capnp"
                       "https://github.com/amaanq/tree-sitter-capnp"
                       "fc6e2addf103861b9b3dffb82c543eb6b71061aa"
                       "1gcz5v7i1imdsd7vxzj41iflsxx77zvvy9ngn95l8kg6rz8y3b0l"))
(define grammar-cel
  (make-grammar-source "cel"
                       "https://github.com/bufbuild/tree-sitter-cel"
                       "9f2b65da14c216df53933748e489db0f11121464"
                       "0kzpyycknbhz02w7fa3nch61ijv13aimw6ikm805cf8g1jjjp2la"))
(define grammar-clojure
  (make-grammar-source "clojure"
                       "https://github.com/sogaiu/tree-sitter-clojure"
                       "e57c569ae332ca365da623712ae1f50f84daeae2"
                       "0hq8rv4s0gzbfv3qj4gsrm87baiy6k1hyfbhbbpwbrcpd8jl7gdn"))
(define grammar-cmake
  (make-grammar-source "cmake"
                       "https://github.com/uyha/tree-sitter-cmake"
                       "6e51463ef3052dd3b328322c22172eda093727ad"
                       "14l7l6cc9pdqinff9hjda7rakzfvwk0qcbv6djl0s9f21875l4nv"))
(define grammar-comment
  (make-grammar-source "comment"
                       "https://github.com/stsewd/tree-sitter-comment"
                       "aefcc2813392eb6ffe509aa0fc8b4e9b57413ee1"
                       "0j7if2qcjsiqqg4cihs99db5gkp1l362gzf6rbjm9fhmsslh26ca"))
(define grammar-cpon
  (make-grammar-source "cpon"
                       "https://github.com/fvacek/tree-sitter-cpon"
                       "0d01fcdae5a53191df5b1349f9bce053833270e7"
                       "1ar8dfjjg1pp9i403jm21d4b70xi2w4kjdmwnxlc597582jkjx56"))
(define grammar-cpp
  (make-grammar-source "cpp"
                       "https://github.com/tree-sitter/tree-sitter-cpp"
                       "670404d7c689be1c868a46f919ba2a3912f2b7ef"
                       "0qwxn0h7y5jizxlqp7mgih9cscf67dlhwbrnn42fgvj837ddmqag"))
(define grammar-css
  (make-grammar-source "css"
                       "https://github.com/tree-sitter/tree-sitter-css"
                       "769203d0f9abe1a9a691ac2b9fe4bb4397a73c51"
                       "05875jmkkklx0b5g1h4qc8cbgcj8mr1n8slw7hsn0wssn7yn42z5"))
(define grammar-cue
  (make-grammar-source "cue"
                       "https://github.com/eonpatapon/tree-sitter-cue"
                       "61843e3beebf19417e4fede4e8be4df1084317ad"
                       "15cmlkip9nl6yxkbkv0lp7prfyrhri94szqg3vn7a90s4zjkfx99"))
(define grammar-d
  (make-grammar-source "d"
                       "https://github.com/gdamore/tree-sitter-d"
                       "5566f8ce8fc24186fad06170bbb3c8d97c935d74"
                       "1kkf3r4k8c3cps2ccwxlml04s42zsk67j3ag37m0w1hi83ya1cl1"))
(define grammar-dart
  (make-grammar-source "dart"
                       "https://github.com/UserNobody14/tree-sitter-dart"
                       "e398400a0b785af3cf571f5a57eccab242f0cdf9"
                       "05868i5156y1fd0l14q1fq2ykp7srrkwhs3d6jks7bbrahj6lcgq"))
(define grammar-dbml
  (make-grammar-source "dbml"
                       "https://github.com/dynamotn/tree-sitter-dbml"
                       "2e2fa5640268c33c3d3f27f7e676f631a9c68fd9"
                       "1k3wrmg6iz75iqx05g3hr9rkfh8h4d538g80jdhzvi0qlrdm8713"))
(define grammar-devicetree
  (make-grammar-source "devicetree"
                       "https://github.com/joelspadin/tree-sitter-devicetree"
                       "877adbfa0174d25894c40fa75ad52d4515a36368"
                       "1ds7pa4x1yd54xa2mba37vp8lbi8n4l975lps0249x8xw35r0jrl"))
(define grammar-dhall
  (make-grammar-source "dhall"
                       "https://github.com/jbellerb/tree-sitter-dhall"
                       "affb6ee38d629c9296749767ab832d69bb0d9ea8"
                       "0r4f4w2jhm2hyvh3r3phdjhigsh0an8g4p21cbz8ldkld8ma9lxb"))
(define grammar-diff
  (make-grammar-source "diff"
                       "https://github.com/the-mikedavis/tree-sitter-diff"
                       "fd74c78fa88a20085dbc7bbeaba066f4d1692b63"
                       "0lbadj3657yk6r46sffbzkmm1kp47rydhsn1bj1w1mnyr27bfvrf"))
(define grammar-dockerfile
  (make-grammar-source "dockerfile"
                       "https://github.com/camdencheek/tree-sitter-dockerfile"
                       "8ee3a0f7587b2bd8c45c8cb7d28bd414604aec62"
                       "0izv8fryh7vivh9nbpzqpxb74fanrnd21bbq8xzazz4dvgfd7g93"))
(define grammar-dot
  (make-grammar-source "dot"
                       "https://github.com/rydesun/tree-sitter-dot"
                       "917230743aa10f45a408fea2ddb54bbbf5fbe7b7"
                       "1q2rbv16dihlmrbxlpn0x03na7xp8rdhf58vwm3lryn3nfcjckn2"))
(define grammar-dtd
  (make-grammar-source "dtd"
                       "https://github.com/KMikeeU/tree-sitter-dtd"
                       "6116becb02a6b8e9588ef73d300a9ba4622e156f"
                       "1gs1gkk20khmvz10ikhym9yqkcn5km5hq4hz4jyxdz67jzpbbbls"))
(define grammar-earthfile
  (make-grammar-source "earthfile"
                       "https://github.com/glehmann/tree-sitter-earthfile"
                       "a079e6c472eeedd6b9a1e03ca0b6c82cd6a112a4"
                       "1n40qf77lbp5cxxml382ch26gvjy0ysh8mi3hx0q0hg48skix3ak"))
(define grammar-edoc
  (make-grammar-source "edoc"
                       "https://github.com/the-mikedavis/tree-sitter-edoc"
                       "74774af7b45dd9cefbf9510328fc6ff2374afc50"
                       "1qz6hghnyhrgm23793hyw84zxzrhb3jc1prih806hirzybbapc80"))
(define grammar-eex
  (make-grammar-source "eex"
                       "https://github.com/connorlay/tree-sitter-eex"
                       "f742f2fe327463335e8671a87c0b9b396905d1d1"
                       "19n07ywavwkh4p189d18wxhch45qgn094b7mkdymh60zr7cbmyjh"))
(define grammar-elixir
  (make-grammar-source "elixir"
                       "https://github.com/elixir-lang/tree-sitter-elixir"
                       "b20eaa75565243c50be5e35e253d8beb58f45d56"
                       "1i0c0xki3sv24649p0ws7xs2jagbwg7z7baz1960239bj94nl487"))
(define grammar-elm
  (make-grammar-source "elm"
                       "https://github.com/elm-tooling/tree-sitter-elm"
                       "df4cb639c01b76bc9ac9cc66788709a6da20002c"
                       "14il4yv65w7l29s84ilp3w3v9hy7x8j2bg73wwjyazava6n0f41y"))
(define grammar-elvish
  (make-grammar-source "elvish"
                       "https://github.com/ckafi/tree-sitter-elvish"
                       "e50787cadd3bc54f6d9c0704493a79078bb8a4e5"
                       "1xw9mqq3p64lgli6nvlavrrlg29nfj2fbg7rr2jw1jcjk8lgxv1p"))
(define grammar-embedded-template
  (make-grammar-source "embedded-template"
                       "https://github.com/tree-sitter/tree-sitter-embedded-template"
                       "d21df11b0ecc6fd211dbe11278e92ef67bd17e97"
                       "0h3nj6fz512riyx2b65pg9pjprkpkasnglwljlzi6s1in9fdig3x"))
(define grammar-erlang
  (make-grammar-source "erlang"
                       "https://github.com/the-mikedavis/tree-sitter-erlang"
                       "9d4b36a76d5519e3dbf1ec4f4b61bb1a293f584c"
                       "19syh7grvvh1gfyqzdxvfhxrbn66q11i3ag0xfmpcq1vsy3y7zxf"))
(define grammar-esdl
  (make-grammar-source "esdl"
                       "https://github.com/greym0uth/tree-sitter-esdl"
                       "df83acc8cacd0cfb139eecee0e718dc32c4f92e2"
                       "1p02ij9clx6824cfxscmcqm10iai9wl7q41jyg6qxglxrswqxjzs"))
(define grammar-fidl
  (make-grammar-source "fidl"
                       "https://github.com/google/tree-sitter-fidl"
                       "bdbb635a7f5035e424f6173f2f11b9cd79703f8d"
                       "0sp919n7fw3v5smyipp9087rm25ij88fzp298jkgnz00p45l1kzs"))
(define grammar-fish
  (make-grammar-source "fish"
                       "https://github.com/ram02z/tree-sitter-fish"
                       "84436cf24c2b3176bfbb220922a0fdbd0141e406"
                       "12s3db2mg9qa8l1i4a5h59kd7kl5j83wyl5kzq7j2k56xmvq56x0"))
(define grammar-forth
  (make-grammar-source "forth"
                       "https://github.com/alexanderbrevig/tree-sitter-forth"
                       "90189238385cf636b9ee99ce548b9e5b5e569d48"
                       "02s7g2ni3w4q5aa1acrz5van1p5ldp0gxfwgpfdpncjwxw78295z"))
(define grammar-fortran
  (make-grammar-source "fortran"
                       "https://github.com/stadelmanma/tree-sitter-fortran"
                       "f0f2f100952a353e64e26b0fa710b4c296d7af13"
                       "17iiz38s7adkzv9rw97nn5nd9kvn1vyccm7r6ywipaa5aim0nm6a"))
(define grammar-fsharp
  (make-grammar-source "fsharp"
                       "https://github.com/kaashyapan/tree-sitter-fsharp"
                       "18da392fd9bd5e79f357abcce13f61f3a15e3951"
                       "0qpwcwd36j344xp4dkddqk0iwdf2xfhwhli6v2pn33s3v38a5sm6"))
(define grammar-gas
  (make-grammar-source "gas"
                       "https://github.com/sirius94/tree-sitter-gas"
                       "60f443646b20edee3b7bf18f3a4fb91dc214259a"
                       "0k3i8qjv04q0g4zz116y3x541jgl329zn76r6mvfg3mqcagcs8hz"))
(define grammar-gdscript
  (make-grammar-source "gdscript"
                       "https://github.com/PrestonKnopp/tree-sitter-gdscript"
                       "a4b57cc3bcbfc24550e858159647e9238e7ad1ac"
                       "0mppjapxsdch9wwqklnfb0cs7xwja333w6wzygykzrb7nna50lfz"))
(define grammar-git-commit
  (make-grammar-source "git-commit"
                       "https://github.com/the-mikedavis/tree-sitter-git-commit"
                       "6f193a66e9aa872760823dff020960c6cedc37b3"
                       "0isahiak1vslf8mr2arq34c0j9xr1fxxl7xh2h0ps5iz1xkdyii8"))
(define grammar-git-config
  (make-grammar-source "git-config"
                       "https://github.com/the-mikedavis/tree-sitter-git-config"
                       "9c2a1b7894e6d9eedfe99805b829b4ecd871375e"
                       "0s3i4wh1c9hbgki2ibhkjnqw2rriixa01qpr55khhgsg30338k1v"))
(define grammar-git-rebase
  (make-grammar-source "git-rebase"
                       "https://github.com/the-mikedavis/tree-sitter-git-rebase"
                       "d8a4207ebbc47bd78bacdf48f883db58283f9fd8"
                       "16g3i69jxq7fm2nis2d61bcj1r84sbr1drbmjd6zwm8rxkdnxd4r"))
(define grammar-gitattributes
  (make-grammar-source "gitattributes"
                       "https://github.com/mtoohey31/tree-sitter-gitattributes"
                       "3dd50808e3096f93dccd5e9dc7dc3dba2eb12dc4"
                       "1idi1hrpkc17y5vi2h0vfwzw64w6wy4cz4yk08avqnms6mxkxq94"))
(define grammar-gitignore
  (make-grammar-source "gitignore"
                       "https://github.com/shunsambongi/tree-sitter-gitignore"
                       "f4685bf11ac466dd278449bcfe5fd014e94aa504"
                       "17rar33y4dngmx69kjiw6wgrsd6kc0c8w4xa4rx06rjmv7b1hfij"))
(define grammar-gleam
  (make-grammar-source "gleam"
                       "https://github.com/gleam-lang/tree-sitter-gleam"
                       "bcf9c45b56cbe46e9dac5eee0aee75df270000ac"
                       "008k7v56n558lzrr7dx5p0r5mb007fiwnk4ar3wglak0gqyhzn2x"))
(define grammar-glimmer
  (make-grammar-source "glimmer"
                       "https://github.com/ember-tooling/tree-sitter-glimmer"
                       "5dc6d1040e8ff8978ff3680e818d85447bbc10aa"
                       "1rhyc8vg0q96qppnwvvalx094n8j3h7yn0sqynpghihqfab0f6hb"))
(define grammar-glsl
  (make-grammar-source "glsl"
                       "https://github.com/theHamsta/tree-sitter-glsl"
                       "88408ffc5e27abcffced7010fc77396ae3636d7e"
                       "1zsj20xxv8mcj991gyp2gi2h31p16znkjxgbw5lpymj3nz7w22ld"))
(define grammar-gn
  (make-grammar-source "gn"
                       "https://github.com/willcassella/tree-sitter-gn"
                       "e18d6e36a79b20dafb58f19d407bd38b0e60260e"
                       "0ramv7vp3s9252iq616a6ixhr02c44ipbgkgny84d87fizxkd4y9"))
(define grammar-go
  (make-grammar-source "go"
                       "https://github.com/tree-sitter/tree-sitter-go"
                       "64457ea6b73ef5422ed1687178d4545c3e91334a"
                       "16d32m78y8jricba9xav35c9y0k2r29irj5xyqgq24323yln9jnz"))
(define grammar-godot-resource
  (make-grammar-source "godot-resource"
                       "https://github.com/PrestonKnopp/tree-sitter-godot-resource"
                       "b6ef0768711086a86b3297056f9ffb5cc1d77b4a"
                       "0agnvg95fx60xkr5fivl1x3yhcw6ca58f7bpx3dq6fl7pyfgrky2"))
(define grammar-gomod
  (make-grammar-source "gomod"
                       "https://github.com/camdencheek/tree-sitter-go-mod"
                       "e8f51f8e4363a3d9a427e8f63f4c1bbc5ef5d8d0"
                       "09rkqwdwhsm41nrz73rqbajap4bc0spjcld9k9fr8xmlmqa67j2b"))
(define grammar-gotmpl
  (make-grammar-source "gotmpl"
                       "https://github.com/dannylongeuay/tree-sitter-go-template"
                       "395a33e08e69f4155156f0b90138a6c86764c979"
                       "0v1ciqdr9zj3hrzg9rrikr6v72yjs25sk631kd32r024igpxflv2"))
(define grammar-gowork
  (make-grammar-source "gowork"
                       "https://github.com/omertuc/tree-sitter-go-work"
                       "6dd9dd79fb51e9f2abc829d5e97b15015b6a8ae2"
                       "1kzrs4rpby3b0h87rbr02k55k3mmkmdy7rvl11q95b3ym0smmyqb"))
(define grammar-graphql
  (make-grammar-source "graphql"
                       "https://github.com/bkegley/tree-sitter-graphql"
                       "5e66e961eee421786bdda8495ed1db045e06b5fe"
                       "0xvrd6p9rxdjpqfq575ap6hpl2f7dad5i4d4m05w1qk9jx33vw9n"))
(define grammar-groovy
  (make-grammar-source "groovy"
                       "https://github.com/murtaza64/tree-sitter-groovy"
                       "235009aad0f580211fc12014bb0846c3910130c1"
                       "0p8wxbw5y3nxzl1g29sn5df8y8hahcl2bv7nl1qw7j4g4v77bfhs"))
(define grammar-haskell
  (make-grammar-source "haskell"
                       "https://github.com/tree-sitter/tree-sitter-haskell"
                       "d7ac98f49e3ed7e17541256fe3881a967d7ffdd3"
                       "0610dpnnrmwdxhj0cz4mnajx4aaxhr77w4vc756605zgv54djisw"))
(define grammar-haskell-persistent
  (make-grammar-source "haskell-persistent"
                       "https://github.com/MercuryTechnologies/tree-sitter-haskell-persistent"
                       "58a6ccfd56d9f1de8fb9f77e6c42151f8f0d0f3d"
                       "01pmwvpaw2amnpqcib5lmzys2f3lbh00qkw0kmxzf6syzjdjg057"))
(define grammar-hcl
  (make-grammar-source "hcl"
                       "https://github.com/MichaHoffmann/tree-sitter-hcl"
                       "3cb7fc28247efbcb2973b97e71c78838ad98a583"
                       "0hg7w3hsvxjwz1rb1izknn46msm4mkjx2cnq603lzn7i9mb1pbyr"))
(define grammar-heex
  (make-grammar-source "heex"
                       "https://github.com/phoenixframework/tree-sitter-heex"
                       "2e1348c3cf2c9323e87c2744796cf3f3868aa82a"
                       "04yzzqfxinsh62l7750grflxg809m8y3qlbmc1vknk2xk34l9d78"))
(define grammar-hocon
  (make-grammar-source "hocon"
                       "https://github.com/antosha417/tree-sitter-hocon"
                       "c390f10519ae69fdb03b3e5764f5592fb6924bcc"
                       "0v1hcfnlxphcpqs1md1cpi358mmfsa3yx8zc0rw65xi8i9hkg6pm"))
(define grammar-hoon
  (make-grammar-source "hoon"
                       "https://github.com/urbit-pilled/tree-sitter-hoon"
                       "1d5df35af3e0afe592832a67b9fb3feeeba1f7b6"
                       "0maph2i76liq3ljac9dgq0fqbdrn41klcr52qp32c2j91v4fj6nv"))
(define grammar-hosts
  (make-grammar-source "hosts"
                       "https://github.com/ath3/tree-sitter-hosts"
                       "301b9379ce7dfc8bdbe2c2699a6887dcb73953f9"
                       "0sgpybvwrvpw0lvk2s96ppyh8132g2vfjyif43yg08zlj06mvjbz"))
(define grammar-html
  (make-grammar-source "html"
                       "https://github.com/tree-sitter/tree-sitter-html"
                       "29f53d8f4f2335e61bf6418ab8958dac3282077a"
                       "0wadphmgndj4vq9mg258624pj0klspbpcx8qlc6f8by5xbshvkmz"))
(define grammar-hurl
  (make-grammar-source "hurl"
                       "https://github.com/pfeiferj/tree-sitter-hurl"
                       "cd1a0ada92cc73dd0f4d7eedc162be4ded758591"
                       "12mc2plz2vvz06qi1hhfsl37pam1i829j4szkz7rab08y0mz7vxy"))
(define grammar-hyprlang
  (make-grammar-source "hyprlang"
                       "https://github.com/tree-sitter-grammars/tree-sitter-hyprlang"
                       "27af9b74acf89fa6bed4fb8cb8631994fcb2e6f3"
                       "1kri1csdk6n13zq9av6z2qv7p685mkxc8297693mbwnb0yn62nbi"))
(define grammar-iex
  (make-grammar-source "iex"
                       "https://github.com/elixir-lang/tree-sitter-iex"
                       "39f20bb51f502e32058684e893c0c0b00bb2332c"
                       "10lwwh3v2cc39hcydz5p899grzy50gr46bbddhs9vaam7wrp25b1"))
(define grammar-ini
  (make-grammar-source "ini"
                       "https://github.com/justinmk/tree-sitter-ini"
                       "4d247fb876b4ae6b347687de4a179511bf67fcbc"
                       "08z3281q9vq3lr3mcj4cm6zh2bsg9jhyrxfqfann9ixklvzglkn6"))
(define grammar-inko
  (make-grammar-source "inko"
                       "https://github.com/inko-lang/tree-sitter-inko"
                       "6983354c13a14bc621d7a3619f1790149e901187"
                       "05665v0015aq3jxxkc9r5cvi09c4x8xvhj926nd6pmn6d4hkrif5"))
(define grammar-janet-simple
  (make-grammar-source "janet-simple"
                       "https://github.com/sogaiu/tree-sitter-janet-simple"
                       "51271e260346878e1a1aa6c506ce6a797b7c25e2"
                       "018vwy6y1kr1bh5wp399vspc1y4wpvvgh0c6p7541xl196rzywa1"))
(define grammar-java
  (make-grammar-source "java"
                       "https://github.com/tree-sitter/tree-sitter-java"
                       "09d650def6cdf7f479f4b78f595e9ef5b58ce31e"
                       "0440xh8x8rkbdlc1f1ail9wzl4583l29ic43x9lzl8290bm64q5l"))
(define grammar-javascript
  (make-grammar-source "javascript"
                       "https://github.com/tree-sitter/tree-sitter-javascript"
                       "f772967f7b7bc7c28f845be2420a38472b16a8ee"
                       "0vp7z57scpbcvyxpya06lnpz9f5kjdb66wjlkrp684xwjjgq1wxd"))
(define grammar-jinja2
  (make-grammar-source "jinja2"
                       "https://github.com/varpeti/tree-sitter-jinja2"
                       "a533cd3c33aea6acb0f9bf9a56f35dcfe6a8eb53"
                       "171na82zigcqn4b8xvr27whfga3y117zlzrcr0f4wni4z6bxxhcj"))
(define grammar-jsdoc
  (make-grammar-source "jsdoc"
                       "https://github.com/tree-sitter/tree-sitter-jsdoc"
                       "189a6a4829beb9cdbe837260653b4a3dfb0cc3db"
                       "0qpsy234p30j6955wpjlaqwbr21bi56p0ln5vhrd84s99ac7s6b6"))
(define grammar-json
  (make-grammar-source "json"
                       "https://github.com/tree-sitter/tree-sitter-json"
                       "73076754005a460947cafe8e03a8cf5fa4fa2938"
                       "1npf2hrx33jhjpmzcyi7aszg436m4d80sa6h4mhhkmx51q4kpcf1"))
(define grammar-json5
  (make-grammar-source "json5"
                       "https://github.com/Joakker/tree-sitter-json5"
                       "c23f7a9b1ee7d45f516496b1e0e4be067264fa0d"
                       "11j8sjq2b0ibiygmcnxzl5vxa0p9ygngfhzjvjl19jnlnf0h7a6p"))
(define grammar-jsonnet
  (make-grammar-source "jsonnet"
                       "https://github.com/sourcegraph/tree-sitter-jsonnet"
                       "0475a5017ad7dc84845d1d33187f2321abcb261d"
                       "1dh8wqi8mnsapzicrdjg6cj6skj9f2ia4ijg08pl45bcxc1lidzc"))
(define grammar-julia
  (make-grammar-source "julia"
                       "https://github.com/tree-sitter/tree-sitter-julia"
                       "8fb38abff74652c4faddbf04d2d5bbbc6b4bae25"
                       "06h5nyxw72z3w5a62y59332w2xg90sm3c2j6na7vvf7nark7vb8v"))
(define grammar-just
  (make-grammar-source "just"
                       "https://github.com/IndianBoy42/tree-sitter-just"
                       "8af0aab79854aaf25b620a52c39485849922f766"
                       "15hl3dsr5kxjl1kl9md2gb9bwj0ni54d9k6jv1h74b3psf4qb0l5"))
(define grammar-kdl
  (make-grammar-source "kdl"
                       "https://github.com/amaanq/tree-sitter-kdl"
                       "3ca569b9f9af43593c24f9e7a21f02f43a13bb88"
                       "1015x24ffrvzb0m0wbqdzmaqavpnjw0gvcagxi9b6vj3n1ynm0ps"))
(define grammar-koka
  (make-grammar-source "koka"
                       "https://github.com/mtoohey31/tree-sitter-koka"
                       "96d070c3700692858035f3524cc0ad944cef2594"
                       "1bxmflc8ynqpdkzwc74fqqcjhzkggkzxbzhbx0ji4g7kfknc0ldk"))
(define grammar-kotlin
  (make-grammar-source "kotlin"
                       "https://github.com/fwcd/tree-sitter-kotlin"
                       "a4f71eb9b8c9b19ded3e0e9470be4b1b77c2b569"
                       "051x0p02dkx0rz83sy70wczm6k5b938q4knhh8halv2acs32l4v9"))
(define grammar-latex
  (make-grammar-source "latex"
                       "https://github.com/latex-lsp/tree-sitter-latex"
                       "8c75e93cd08ccb7ce1ccab22c1fbd6360e3bcea6"
                       "0lc42x604f04x3kkp88vyqa5dx90wqyisiwl7nn861lyxl6phjnf"))
(define grammar-ld
  (make-grammar-source "ld"
                       "https://github.com/mtoohey31/tree-sitter-ld"
                       "0e9695ae0ede47b8744a8e2ad44d4d40c5d4e4c9"
                       "0v306zf0k0q53qzrbbg2r26z10b3w640mamhcr0598xgxx4amv2k"))
(define grammar-ldif
  (make-grammar-source "ldif"
                       "https://github.com/kepet19/tree-sitter-ldif"
                       "0a917207f65ba3e3acfa9cda16142ee39c4c1aaa"
                       "111lalyzwl0lpzmsj9amlbnaqbz447fn9zn526dwmlnc79mf0ay6"))
(define grammar-lean
  (make-grammar-source "lean"
                       "https://github.com/Julian/tree-sitter-lean"
                       "d98426109258b266e1e92358c5f11716d2e8f638"
                       "0sc5h0fan8cmpxxf2jizky0ynmr81qs9q7xgh9zrmdi69r59p0sk"))
(define grammar-ledger
  (make-grammar-source "ledger"
                       "https://github.com/cbarrete/tree-sitter-ledger"
                       "1f864fb2bf6a87fe1b48545cc6adc6d23090adf7"
                       "1qxdad40nladdnq6d2s1z7fxlwjz8llpj85da792pv7p7dwh95vd"))
(define grammar-llvm
  (make-grammar-source "llvm"
                       "https://github.com/benwilliamgraham/tree-sitter-llvm"
                       "e9948edc41e9e5869af99dddb2b5ff5cc5581af6"
                       "0d579ylhi3hgzm5wbahs6hci1rhv7q1x6wsav9dbzv1y6np2dfrk"))
(define grammar-llvm-mir
  (make-grammar-source "llvm-mir"
                       "https://github.com/Flakebi/tree-sitter-llvm-mir"
                       "06fabca19454b2dc00c1b211a7cb7ad0bc2585f1"
                       "1a3ymx9baspxcjvgb0i7369zg42ikl5nf61f9b1y18azs940l35r"))
(define grammar-log
  (make-grammar-source "log"
                       "https://github.com/Tudyx/tree-sitter-log"
                       "62cfe307e942af3417171243b599cc7deac5eab9"
                       "11fw43bavs6wbwcv6j7p7yp0z72inf7l9bca30pjcdx9vy57dwwn"))
(define grammar-lpf
  (make-grammar-source "lpf"
                       "https://gitlab.com/TheZoq2/tree-sitter-lpf"
                       "db7372e60c722ca7f12ab359e57e6bf7611ab126"
                       "1dwkjvwv161m3549bw6wmjvyhsggp8ncxg8hdh4hbyplwq4virb3"))
(define grammar-lua
  (make-grammar-source "lua"
                       "https://github.com/tree-sitter-grammars/tree-sitter-lua"
                       "88e446476a1e97a8724dff7a23e2d709855077f2"
                       "05irhg6gg11r9cnzh0h3691pnxjhd396sa1x8xrgqjz2fd09brf3"))
(define grammar-make
  (make-grammar-source "make"
                       "https://github.com/alemuller/tree-sitter-make"
                       "a4b9187417d6be349ee5fd4b6e77b4172c6827dd"
                       "07gz4x12xhigar2plr3jgazb2z4f9xp68nscmvy9a7wafak9l2m9"))
(define grammar-markdoc
  (make-grammar-source "markdoc"
                       "https://github.com/markdoc-extra/tree-sitter-markdoc"
                       "5ffe71b29e8a3f94823913ea9cea51fcfa7e3bf8"
                       "0xrrkxjbchbaj04z94l91d79jrrwx6zkafcbwig5851lfzsjbadc"))
(define grammar-markdown
  (make-grammar-source "markdown"
                       "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                       "62516e8c78380e3b51d5b55727995d2c511436d8"
                       "08wl8y8xgrr10m1p6xpmv0jbmnif30wgd2q5m28ghh1v37q2ixfp"))
(define grammar-markdown_inline
  (make-grammar-source "markdown_inline"
                       "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                       "62516e8c78380e3b51d5b55727995d2c511436d8"
                       "08wl8y8xgrr10m1p6xpmv0jbmnif30wgd2q5m28ghh1v37q2ixfp"))
(define grammar-matlab
  (make-grammar-source "matlab"
                       "https://github.com/acristoffers/tree-sitter-matlab"
                       "6071891a8c39600203eba20513666cf93b4d650a"
                       "142cm0824hr3k9idzqyc50364yhvbg2pbbvwlk9cdm24kc4q59qz"))
(define grammar-mermaid
  (make-grammar-source "mermaid"
                       "https://github.com/monaqa/tree-sitter-mermaid"
                       "d787c66276e7e95899230539f556e8b83ee16f6d"
                       "106w00y6l1fnjakaz9biqk546h2xy0yzr3wmg0yz6fihzj6kf117"))
(define grammar-meson
  (make-grammar-source "meson"
                       "https://github.com/staysail/tree-sitter-meson"
                       "32a83e8f200c347232fa795636cfe60dde22957a"
                       "0g1kc1hidva3ipi4nsi64r9pm8jc48nmhffqshwvbiss0fdf8ac9"))
(define grammar-move
  (make-grammar-source "move"
                       "https://github.com/tzakian/tree-sitter-move"
                       "8bc0d1692caa8763fef54d48068238d9bf3c0264"
                       "0h3ghnrr0rjnaf1ckgjjy3l9fnj6ix3q3yh7h42h0hn6kqpnjl5y"))
(define grammar-nasm
  (make-grammar-source "nasm"
                       "https://github.com/naclsn/tree-sitter-nasm"
                       "a0db15db6fcfb1bf2cc8702500e55e558825c48b"
                       "1q4xcl0ypf0als770zpg0vv0pfxr2ysxl2vqxhc3m84s3id31sav"))
(define grammar-nickel
  (make-grammar-source "nickel"
                       "https://github.com/nickel-lang/tree-sitter-nickel"
                       "e1d9337864d209898a08c26b8cd4c2dd14c15148"
                       "08rsarbf38rbhy1xwjxa9kvp67n76fff4fisfhq5dqj9v6k43ia5"))
(define grammar-nim
  (make-grammar-source "nim"
                       "https://github.com/alaviss/tree-sitter-nim"
                       "c5f0ce3b65222f5dbb1a12f9fe894524881ad590"
                       "1rdrhazwsc63zvrrsi1gcgkjcbfnpdbq4azbvmvxmbg0kdzijc1b"))
(define grammar-nix
  (make-grammar-source "nix"
                       "https://github.com/nix-community/tree-sitter-nix"
                       "1b69cf1fa92366eefbe6863c184e5d2ece5f187d"
                       "0ls9djhpbbnjvd6b3166zjy92di0927f70720b57j2d3925538i5"))
(define grammar-nu
  (make-grammar-source "nu"
                       "https://github.com/nushell/tree-sitter-nu"
                       "358c4f509eb97f0148bbd25ad36acc729819b9c1"
                       "1vr1gvd163vm2kk8z26zw5x13ri55kyhbr8mpqj9pa240zck0z8c"))
(define grammar-ocaml
  (make-grammar-source "ocaml"
                       "https://github.com/tree-sitter/tree-sitter-ocaml"
                       "9965d208337d88bbf1a38ad0b0fe49e5f5ec9677"
                       "092n6p4c9wqmghzjfxfn0h6y911w009fa9rk588kz4qavdjdx3zm"))
(define grammar-ocaml-interface
  (make-grammar-source "ocaml-interface"
                       "https://github.com/tree-sitter/tree-sitter-ocaml"
                       "9965d208337d88bbf1a38ad0b0fe49e5f5ec9677"
                       "092n6p4c9wqmghzjfxfn0h6y911w009fa9rk588kz4qavdjdx3zm"))
(define grammar-odin
  (make-grammar-source "odin"
                       "https://github.com/tree-sitter-grammars/tree-sitter-odin"
                       "b5f668ef8918aab13812ce73acd89fe191fb8c5e"
                       "1m73plw3c1l3c2dyxkv62k0c89qjhrbiynn0vqrg0ydrqsrsbzqg"))
(define grammar-ohm
  (make-grammar-source "ohm"
                       "https://github.com/novusnota/tree-sitter-ohm"
                       "80f14f0e477ddacc1e137d5ed8e830329e3fb7a3"
                       "1pckhw239d5sidcm5rl04dfx20jnbi6lpwl5r6gvqg89iazm6kca"))
(define grammar-opencl
  (make-grammar-source "opencl"
                       "https://github.com/lefp/tree-sitter-opencl"
                       "8e1d24a57066b3cd1bb9685bbc1ca9de5c1b78fb"
                       "0pqfjd3sn1m8pqkj5hc3bf235jk8v7llh0xmw4470v8v2hw8ladp"))
(define grammar-openscad
  (make-grammar-source "openscad"
                       "https://github.com/bollian/tree-sitter-openscad"
                       "5c3ce93df0ac1da7197cf6ae125aade26d6b8972"
                       "1bimdd71899i454k9638jg5m97scxcvqsn4szy1i9d0lwx8wp05p"))
(define grammar-org
  (make-grammar-source "org"
                       "https://github.com/milisims/tree-sitter-org"
                       "698bb1a34331e68f83fc24bdd1b6f97016bb30de"
                       "0adzb2kw8k3w75p5f3ax9lal64k8n2fwrmrqak2z2w8jl8cgagl6"))
(define grammar-pascal
  (make-grammar-source "pascal"
                       "https://github.com/Isopod/tree-sitter-pascal"
                       "2fd40f477d3e2794af152618ccfac8d92eb72a66"
                       "11zjwk8wpx2b565sf82mh02bp5iswhmfykzdqfk0qwasr9ka2w7y"))
(define grammar-passwd
  (make-grammar-source "passwd"
                       "https://github.com/ath3/tree-sitter-passwd"
                       "20239395eacdc2e0923a7e5683ad3605aee7b716"
                       "03j18mx4g901q70kpy39hayh4snwis62svx6ir5015cvjz4fwiyx"))
(define grammar-pem
  (make-grammar-source "pem"
                       "https://github.com/mtoohey31/tree-sitter-pem"
                       "be67a4330a1aa507c7297bc322204f936ec1132c"
                       "144gsh1cw3vzrgy95fvx7ld6gp0fq1v0mzmll0liiqgyrjsxda3h"))
(define grammar-perl
  (make-grammar-source "perl"
                       "https://github.com/tree-sitter-perl/tree-sitter-perl"
                       "e99bb5283805db4cb86c964722d709df21b0ac16"
                       "0cp7s3aikb0vjwsipanikmyirs49r740bppis7k8nlbq3wf0h91y"))
(define grammar-pest
  (make-grammar-source "pest"
                       "https://github.com/pest-parser/tree-sitter-pest"
                       "a8a98a824452b1ec4da7f508386a187a2f234b85"
                       "0jnxk4zjh5r91pq9rb8d7byxq2hjg8mc6yzr3qahg7pfsbh7b6i6"))
(define grammar-php
  (make-grammar-source "php"
                       "https://github.com/tree-sitter/tree-sitter-php"
                       "f860e598194f4a71747f91789bf536b393ad4a56"
                       "02yc5b3qps8ghsmy4b5m5kldyr5pnqz9yw663v13pnz92r84k14g"))
(define grammar-php-only
  (make-grammar-source "php-only"
                       "https://github.com/tree-sitter/tree-sitter-php"
                       "cf1f4a0f1c01c705c1d6cf992b104028d5df0b53"
                       "1lxfxlkakd6kxi9ma333wfi3xc85z5b4bb9rzpnhm97lxgcpx3kg"))
(define grammar-pkl
  (make-grammar-source "pkl"
                       "https://github.com/apple/tree-sitter-pkl"
                       "c03f04a313b712f8ab00a2d862c10b37318699ae"
                       "00ix6sgzfjhin6qaa7lw31psgpjx6w6plsimx5iwpcdyyjcbh9dv"))
(define grammar-po
  (make-grammar-source "po"
                       "https://github.com/erasin/tree-sitter-po"
                       "417cee9abb2053ed26b19e7de972398f2da9b29e"
                       "1sm6hcyma29rw6shim4h27s0pmyby1yy4bjn9dcv9362xvanhacb"))
(define grammar-pod
  (make-grammar-source "pod"
                       "https://github.com/tree-sitter-perl/tree-sitter-pod"
                       "39da859947b94abdee43e431368e1ae975c0a424"
                       "159vy1hxkziyhbxl4jw2k0scvckn4hh3l8ai5ajaq8blv412bidh"))
(define grammar-ponylang
  (make-grammar-source "ponylang"
                       "https://github.com/mfelsche/tree-sitter-ponylang"
                       "ef66b151bc2604f431b5668fcec4747db4290e11"
                       "08g0a3kmv71rq86sizyikzsv5h2bdg8vcdiln7vrl482dczgxaky"))
(define grammar-powershell
  (make-grammar-source "powershell"
                       "https://github.com/airbus-cert/tree-sitter-powershell"
                       "c9316be0faca5d5b9fd3b57350de650755f42dc0"
                       "0l5znacq20rrqgh62x7d24ac3f97fx19mfs4s64zaqyq4zprba2c"))
(define grammar-prisma
  (make-grammar-source "prisma"
                       "https://github.com/victorhqc/tree-sitter-prisma"
                       "eca2596a355b1a9952b4f80f8f9caed300a272b5"
                       "19zb3dkwp2kpyivygqxk8yph0jpl7hn9zzcry15mshn2n0rs9sih"))
(define grammar-protobuf
  (make-grammar-source "protobuf"
                       "https://github.com/yusdacra/tree-sitter-protobuf"
                       "19c211a01434d9f03efff99f85e19f967591b175"
                       "04gxmrc0xf6x96sv347i1p00jcai31ml0s1csj1iz5mjdzgsllhh"))
(define grammar-prql
  (make-grammar-source "prql"
                       "https://github.com/PRQL/tree-sitter-prql"
                       "09e158cd3650581c0af4c49c2e5b10c4834c8646"
                       "08plfhh3kcfhv7jwws92fwb8hdi51n0snldjm1a1gv5iklnzpm3d"))
(define grammar-purescript
  (make-grammar-source "purescript"
                       "https://github.com/postsolar/tree-sitter-purescript"
                       "5ef5592674ea42de75fc2792972e4ea0b6e3da6c"
                       "0rkssskl2cg5ic8ly784pjylkp71myfsinb7yvnrbdpzs482xmsp"))
(define grammar-python
  (make-grammar-source "python"
                       "https://github.com/tree-sitter/tree-sitter-python"
                       "4bfdd9033a2225cc95032ce77066b7aeca9e2efc"
                       "0gcxmydhb7r6n01nd3a36qrdqrli13qdmixk3d726jvrrxmp2ww5"))
(define grammar-qmljs
  (make-grammar-source "qmljs"
                       "https://github.com/yuja/tree-sitter-qmljs"
                       "0b2b25bcaa7d4925d5f0dda16f6a99c588a437f1"
                       "0sgylcj8bfsiyjh11cfzpzywk66xi9clvbcihryk6qkpndz0pzqx"))
(define grammar-r
  (make-grammar-source "r"
                       "https://github.com/r-lib/tree-sitter-r"
                       "cc04302e1bff76fa02e129f332f44636813b0c3c"
                       "0adq1qng3ghb4wvglplj73q8c95hzpfiqb2q8bqnms81i7p2xma7"))
(define grammar-regex
  (make-grammar-source "regex"
                       "https://github.com/tree-sitter/tree-sitter-regex"
                       "e1cfca3c79896ff79842f057ea13e529b66af636"
                       "0j6j0h8ciyhgmcq9iy3843anyfvd7s0biqzgbsqgwbgbqbg2nfwl"))
(define grammar-rego
  (make-grammar-source "rego"
                       "https://github.com/FallenAngel97/tree-sitter-rego"
                       "9ac75e71b2d791e0aadeef68098319d86a2a14cf"
                       "12napwjsv4hx2k4ad0p2v3mv4lhxgp894riglyqmidxxkikzma9g"))
(define grammar-rescript
  (make-grammar-source "rescript"
                       "https://github.com/jaredramirez/tree-sitter-rescript"
                       "467dcf99f68c47823d7b378779a6b282d7ef9782"
                       "081fdw1vyxbwxlk3x4ldgz2hrsav7cgdc2l2iv5z1rfghhzzb1bk"))
(define grammar-robot
  (make-grammar-source "robot"
                       "https://github.com/Hubro/tree-sitter-robot"
                       "322e4cc65754d2b3fdef4f2f8a71e0762e3d13af"
                       "1b0fx4bah63mi441msq1rhvngh9a1d4a9lydfkl3v46qadc9j5ap"))
(define grammar-ron
  (make-grammar-source "ron"
                       "https://github.com/zee-editor/tree-sitter-ron"
                       "7762d709a0f7c1f9e269d0125a2e8a7a69006146"
                       "1y4hfvmiyllcdbn1n8h422fx3gdw5lwzxgfzb5rjnpwfaw9lk18f"))
(define grammar-rst
  (make-grammar-source "rst"
                       "https://github.com/stsewd/tree-sitter-rst"
                       "25e6328872ac3a764ba8b926aea12719741103f1"
                       "0f53jmpjh2kcl9srwwwb7a5k24729ig96m87qjj99myqfnzahw43"))
(define grammar-ruby
  (make-grammar-source "ruby"
                       "https://github.com/tree-sitter/tree-sitter-ruby"
                       "206c7077164372c596ffa8eaadb9435c28941364"
                       "1pqr24bj68lgi1w2cblr8asfby681l3032jrppq4n9x5zm23fi6n"))
(define grammar-rust
  (make-grammar-source "rust"
                       "https://github.com/tree-sitter/tree-sitter-rust"
                       "473634230435c18033384bebaa6d6a17c2523281"
                       "0bk1j283gvhhrgqym9bzjqf9cc1bkbn763k5svdcaixk51cbgzm9"))
(define grammar-scala
  (make-grammar-source "scala"
                       "https://github.com/tree-sitter/tree-sitter-scala"
                       "7891815f42dca9ed6aeb464c2edc39d479ab965c"
                       "176h1n0dwnmlspx8dkifw87b5ykkk09b8azdc5mx4f7zpzjh20ns"))
(define grammar-scheme
  (make-grammar-source "scheme"
                       "https://github.com/6cdh/tree-sitter-scheme"
                       "af3af6c9356b936f8a515a1e449c32e804c2b1a8"
                       "0q2hrayifi7ikmn9ws8idbhng9ai60wblnmgyzmzqai7sqq2il5k"))
(define grammar-scss
  (make-grammar-source "scss"
                       "https://github.com/serenadeai/tree-sitter-scss"
                       "c478c6868648eff49eb04a4df90d703dc45b312a"
                       "15r3jiv36hzx2pmjmp63am3pbc01s52z36xfraa1aw4wlx7lqnq4"))
(define grammar-slint
  (make-grammar-source "slint"
                       "https://github.com/slint-ui/tree-sitter-slint"
                       "3c82235f41b63f35a01ae3888206e93585cbb84a"
                       "0j5gcbdaxghlr5qrhj80mbp28w5g3hm6kcvj3a4cggpi1dizcx8g"))
(define grammar-smali
  (make-grammar-source "smali"
                       "https://github.com/amaanq/tree-sitter-smali"
                       "5ae51e15c4d1ac93cba6127caf3d1f0a072c140c"
                       "08rarb47vqypijs9wc3pmf6742fzxviiqx99z53adiqacj5rmjl5"))
(define grammar-smithy
  (make-grammar-source "smithy"
                       "https://github.com/indoorvivants/tree-sitter-smithy"
                       "8327eb84d55639ffbe08c9dc82da7fff72a1ad07"
                       "0pkpwq1qhkn8hnmj8244m9fcj4whwngkh1ks15sjv34w1yrqyggb"))
(define grammar-sml
  (make-grammar-source "sml"
                       "https://github.com/Giorbo/tree-sitter-sml"
                       "bd4055d5554614520d4a0706b34dc0c317c6b608"
                       "0yx0yb7cr0v2w8y8zi8nxsvwnwbbaj4fwaqffgky58pd665gvsbw"))
(define grammar-solidity
  (make-grammar-source "solidity"
                       "https://github.com/JoranHonig/tree-sitter-solidity"
                       "08338dcee32603383fcef08f36321900bb7a354b"
                       "1wicnrzf9h36p0vsr8mal9qgg46ah4hhybbjc8n9ir349yz2kqhp"))
(define grammar-spicedb
  (make-grammar-source "spicedb"
                       "https://github.com/jzelinskie/tree-sitter-spicedb"
                       "a4e4645651f86d6684c15dfa9931b7841dc52a66"
                       "1q6qivcfr9qb5a8hv73qrcd0dybqapynnrjmagm1s1119a84yjkl"))
(define grammar-sql
  (make-grammar-source "sql"
                       "https://github.com/DerekStride/tree-sitter-sql"
                       "da2d1eff425b146d3c8cab7be8dfa98b11d896dc"
                       "07c6m4agwnm8hjlkfh1ffss49hs15zmliv47wfxw607qd2z59p38"))
(define grammar-sshclientconfig
  (make-grammar-source "sshclientconfig"
                       "https://github.com/metio/tree-sitter-ssh-client-config"
                       "e45c6d5c71657344d4ecaf87dafae7736f776c57"
                       "1gbvzdysdz2gri7k2bxjchn34cdh0l7y4rfxgs0s8nxz73fpyfaj"))
(define grammar-strace
  (make-grammar-source "strace"
                       "https://github.com/sigmaSd/tree-sitter-strace"
                       "2b18fdf9a01e7ec292cc6006724942c81beb7fd5"
                       "03dsx6mhqsfakp02wvxlf41hsjffrwhrkl2b31sar6y9ffzj0glm"))
(define grammar-supercollider
  (make-grammar-source "supercollider"
                       "https://github.com/madskjeldgaard/tree-sitter-supercollider"
                       "3b35bd0fded4423c8fb30e9585c7bacbcd0e8095"
                       "0ib8mja321zwbw59i45xa66p39gikn8n1pihhv26hm5xgdkwwr4r"))
(define grammar-svelte
  (make-grammar-source "svelte"
                       "https://github.com/Himujjal/tree-sitter-svelte"
                       "be7f2e7db1fc19f0852265ec60923fc058380739"
                       "1kp91sarydq41zznwxwxdv2i2pflgzhmpfv0iqgq47fma9bcv2wy"))
(define grammar-sway
  (make-grammar-source "sway"
                       "https://github.com/FuelLabs/tree-sitter-sway"
                       "e491a005ee1d310f4c138bf215afd44cfebf959c"
                       "0d9qszx7iy8dk68ic24gwdm9xm2636ig7nb3n76l5a1jnsk0i03d"))
(define grammar-swift
  (make-grammar-source "swift"
                       "https://github.com/alex-pinkus/tree-sitter-swift"
                       "b1b66955d420d5cf5ff268ae552f0d6e43ff66e1"
                       "1m59bibnaw8yvrv9515gh22560wp9ys28dc9kxqq8q5i1dgl1r05"))
(define grammar-t32
  (make-grammar-source "t32"
                       "https://gitlab.com/xasc/tree-sitter-t32"
                       "6da5e3cbabd376b566d04282005e52ffe67ef74a"
                       "1gi29xzhdc5yavc6113dw1rd607cpss1b9salpbylci5k8sya405"))
(define grammar-tablegen
  (make-grammar-source "tablegen"
                       "https://github.com/Flakebi/tree-sitter-tablegen"
                       "568dd8a937347175fd58db83d4c4cdaeb6069bd2"
                       "1w03navfgpgg4db9x0xvr2z0l8m07nma4icv0fwdgin4nk59lp4l"))
(define grammar-tact
  (make-grammar-source "tact"
                       "https://github.com/tact-lang/tree-sitter-tact"
                       "ec57ab29c86d632639726631fb2bb178d23e1c91"
                       "1syj5j6capmd07v2dyvfikki4l5yrprk0zixj40q9rsdxhma9p6g"))
(define grammar-task
  (make-grammar-source "task"
                       "https://github.com/alexanderbrevig/tree-sitter-task"
                       "f2cb435c5dbf3ee19493e224485d977cb2d36d8b"
                       "0zg27cs6naj2laf2fa0xmxzg4xpkqpgj10f0va3ay7wzwm2004fc"))
(define grammar-tcl
  (make-grammar-source "tcl"
                       "https://github.com/tree-sitter-grammars/tree-sitter-tcl"
                       "56ad1fa6a34ba800e5495d1025a9b0fda338d5b8"
                       "0sajd8hc78i5hyz85ngppnwqsjyw16r3srsnzwwy69yvx7dvs4hs"))
(define grammar-templ
  (make-grammar-source "templ"
                       "https://github.com/vrischmann/tree-sitter-templ"
                       "db662414ccd6f7c78b1e834e7abe11c224b04759"
                       "12qdbzbpkjb0m4pqk8ak5p77bgb61xf7crrssnd13pql61vmbx8c"))
(define grammar-todotxt
  (make-grammar-source "todotxt"
                       "https://github.com/arnarg/tree-sitter-todotxt"
                       "0207f6a4ab6aeafc4b091914d31d8235049a2578"
                       "0wn05m3ckfpfl2j45ickj1ccmikz5lmsmzm7zbi2llcflpx5cr8m"))
(define grammar-toml
  (make-grammar-source "toml"
                       "https://github.com/ikatyang/tree-sitter-toml"
                       "7cff70bbcbbc62001b465603ca1ea88edd668704"
                       "001pjz32v1b3sawlab68fdqz4xwk0v65wj5cdbcav2w1d9n9rhcd"))
(define grammar-tsq
  (make-grammar-source "tsq"
                       "https://github.com/the-mikedavis/tree-sitter-tsq"
                       "48b5e9f82ae0a4727201626f33a17f69f8e0ff86"
                       "015zsvwwm58b5yzk6dl3kzdpg142qpvbb3fv7804jbjqwi1xy8di"))
(define grammar-tsx
  (make-grammar-source "tsx"
                       "https://github.com/tree-sitter/tree-sitter-typescript"
                       "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf"
                       "1r74108lxyp8hsq0pysy0na4kgn06b4xk4yrlq77fw8jr6vs54m1"))
(define grammar-twig
  (make-grammar-source "twig"
                       "https://github.com/gbprod/tree-sitter-twig"
                       "807b293fec3fead64f54c64fdf6fb05516c032b9"
                       "17ifa0k4z8gcs54b0hvaibdhnfpa6r54qr82c8j5p1fzahrsdb3i"))
(define grammar-typescript
  (make-grammar-source "typescript"
                       "https://github.com/tree-sitter/tree-sitter-typescript"
                       "b1bf4825d9eaa0f3bdeb1e52f099533328acfbdf"
                       "1r74108lxyp8hsq0pysy0na4kgn06b4xk4yrlq77fw8jr6vs54m1"))
(define grammar-typst
  (make-grammar-source "typst"
                       "https://github.com/uben0/tree-sitter-typst"
                       "13863ddcbaa7b68ee6221cea2e3143415e64aea4"
                       "198rn8wdcqq51nz6hj1zxk7mplplr2z8vc36z6h1zpjjq925794z"))
(define grammar-ungrammar
  (make-grammar-source "ungrammar"
                       "https://github.com/Philipp-M/tree-sitter-ungrammar"
                       "a7e104629cff5a8b7367187610631e8f5eb7c6ea"
                       "08mzykhw62cnap9by576339xvywap193199jfii61grx9a765l3h"))
(define grammar-unison
  (make-grammar-source "unison"
                       "https://github.com/kylegoetz/tree-sitter-unison"
                       "1f505e2447fa876a87aee47ff3d70b9e141c744f"
                       "1qxx68ga693a95fzc77c3xb7dgccyhx5mdja3375bdn2mblgy62i"))
(define grammar-uxntal
  (make-grammar-source "uxntal"
                       "https://github.com/Jummit/tree-sitter-uxntal"
                       "d68406066648cd6db4c6a2f11ec305af02079884"
                       "1df1pvsml3b53p4zkrpb131wxwkzr68vrx8hv4jbw50sxwjwl2d6"))
(define grammar-v
  (make-grammar-source "v"
                       "https://github.com/v-analyzer/v-analyzer"
                       "e14fdf6e661b10edccc744102e4ccf0b187aa8ad"
                       "1na79z35i6lsrm4b5ww12vs7kl7kwaiwnmdw52p7rkfpd61666qi"))
(define grammar-vala
  (make-grammar-source "vala"
                       "https://github.com/vala-lang/tree-sitter-vala"
                       "c9eea93ba2ec4ec1485392db11945819779745b3"
                       "0xzszj8c5nkk8nccspbiz68aw3ki6pi75ngwrrfqdipxy7ncd70j"))
(define grammar-verilog
  (make-grammar-source "verilog"
                       "https://github.com/tree-sitter/tree-sitter-verilog"
                       "4457145e795b363f072463e697dfe2f6973c9a52"
                       "0lfw8p04c85xyd85jfi3gajzrzsl5xcgc44nwxa43x4g3d7f104p"))
(define grammar-vhdl
  (make-grammar-source "vhdl"
                       "https://github.com/teburd/tree-sitter-vhdl"
                       "c57313adee2231100db0a7880033f6865deeadb2"
                       "142flxd5yqg5aqx507wgqfkmgykjw5kwjq44s1g2gdgscjq4bm64"))
(define grammar-vhs
  (make-grammar-source "vhs"
                       "https://github.com/charmbracelet/tree-sitter-vhs"
                       "9534865e614c95eb9418e5e73f061c32fa4d9540"
                       "093a5cjz2jclljs1z39cxlprsbbljzgvkdlbcyai3rypiza1izj1"))
(define grammar-vue
  (make-grammar-source "vue"
                       "https://github.com/ikatyang/tree-sitter-vue"
                       "91fe2754796cd8fba5f229505a23fa08f3546c06"
                       "0l0kqy9ajm5izqcywd39aavgmc281s8qrhmjkbwl6r8arfj8vsrm"))
(define grammar-wast
  (make-grammar-source "wast"
                       "https://github.com/wasm-lsp/tree-sitter-wasm"
                       "2ca28a9f9d709847bf7a3de0942a84e912f59088"
                       "02v08hs9wirdzfx9a7c3kpn0cpc9i867pw28qka0fid9q537hnbb"))
(define grammar-wat
  (make-grammar-source "wat"
                       "https://github.com/wasm-lsp/tree-sitter-wasm"
                       "2ca28a9f9d709847bf7a3de0942a84e912f59088"
                       "02v08hs9wirdzfx9a7c3kpn0cpc9i867pw28qka0fid9q537hnbb"))
(define grammar-wgsl
  (make-grammar-source "wgsl"
                       "https://github.com/szebniok/tree-sitter-wgsl"
                       "272e89ef2aeac74178edb9db4a83c1ffef80a463"
                       "02nrgw6ypblr226r3d2wh6nn8x6bb3f16ix8anbppgrkzhfam3f7"))
(define grammar-wit
  (make-grammar-source "wit"
                       "https://github.com/hh9527/tree-sitter-wit"
                       "c917790ab9aec50c5fd664cbfad8dd45110cfff3"
                       "08bpcmg2hdc8fyglhy311cx5i1brc798h8aicaxk52wgypv31rz7"))
(define grammar-xit
  (make-grammar-source "xit"
                       "https://github.com/synaptiko/tree-sitter-xit"
                       "7d7902456061bc2ad21c64c44054f67b5515734c"
                       "0lj3p8grbb8527k23mibn2cfxzrikpgwv4qmlcfnvsqqhqfc83w7"))
(define grammar-xml
  (make-grammar-source "xml"
                       "https://github.com/RenjiSann/tree-sitter-xml"
                       "48a7c2b6fb9d515577e115e6788937e837815651"
                       "04jpcxmb9pwam5q6l6s5kvmkzfcnar8yvl3xm5i5rjnzfyvdgkzi"))
(define grammar-xtc
  (make-grammar-source "xtc"
                       "https://github.com/Alexis-Lapierre/tree-sitter-xtc"
                       "7bc11b736250c45e25cfb0215db2f8393779957e"
                       "1ysd1hg6k0m69wqa10ckwrh0n9fpax5svwnm3ib6sapwy4707rdm"))
(define grammar-yaml
  (make-grammar-source "yaml"
                       "https://github.com/ikatyang/tree-sitter-yaml"
                       "0e36bed171768908f331ff7dff9d956bae016efb"
                       "0wyvjh62zdp5bhd2y8k7k7x4wz952l55i1c8d94rhffsbbf9763f"))
(define grammar-yuck
  (make-grammar-source "yuck"
                       "https://github.com/Philipp-M/tree-sitter-yuck"
                       "e3d91a3c65decdea467adebe4127b8366fa47919"
                       "12zf5zqxh6farah2michxjhaxf97bal3x2pgrzfcp0wxz6fkns4z"))
(define grammar-zig
  (make-grammar-source "zig"
                       "https://github.com/maxxnino/tree-sitter-zig"
                       "0d08703e4c3f426ec61695d7617415fff97029bd"
                       "0whj44fl6hmcyap5bjqhy90rd6xnnxgsy3vn1z3mvq8d2mwbnxbb"))

(define rust-addr2line-0.20.0
  (package
    (name "rust-addr2line")
    (version "0.20.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "addr2line" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qv590hm40lz2q77p7s3lghaa5gdbrxcvpiaj1gf1z34ikhpiypl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gimli" ,rust-gimli-0.27.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-adler-1.0.2
  (package
    (name "rust-adler")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "adler" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zim79cvzd5yrkzl3nyfx0avijwgk9fqv3yrscdy1cc79ih02qpj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ahash-0.8.11
  (package
    (name "rust-ahash")
    (version "0.8.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ahash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04chdfkls5xmhp1d48gnjsmglbqibizs3bpbj6rsj604m10si7g8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-getrandom" ,rust-getrandom-0.2.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-version-check" ,rust-version-check-0.9.4)
                        ("rust-zerocopy" ,rust-zerocopy-0.7.31))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-aho-corasick-1.1.2
  (package
    (name "rust-aho-corasick")
    (version "1.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "aho-corasick" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w510wnixvlgimkx1zjbvlxh6xps2vjgfqgwf5a6adlbjp5rv5mj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-allocator-api2-0.2.14
  (package
    (name "rust-allocator-api2")
    (version "0.2.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "allocator-api2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bjlw8v0fd9a65q2ah4pig2n00sx3j0zyhgb8ax1yq9mi9w67wn4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-android-tzdata-0.1.1
  (package
    (name "rust-android-tzdata")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android-tzdata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w7ynjxrfs97xg3qlcdns4kgfpwcdv824g611fq32cag4cdr96g9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-android-system-properties-0.1.5
  (package
    (name "rust-android-system-properties")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "android_system_properties" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-anyhow-1.0.83
  (package
    (name "rust-anyhow")
    (version "1.0.83")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anyhow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wzm0i8jlmxpcfkmrqnmcpi00ca4g2kg6zfdm4cvbqnwpcnb7g95"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-arc-swap-1.7.1
  (package
    (name "rust-arc-swap")
    (version "1.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "arc-swap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mrl9a9r9p9bln74q6aszvf22q1ijiw089jkrmabfqkbj31zixv9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-autocfg-1.1.0
  (package
    (name "rust-autocfg")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "autocfg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ylp3cb47ylzabimazvbz9ms6ap784zhb6syaz6c1jqpmcmq0s6l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-backtrace-0.3.68
  (package
    (name "rust-backtrace")
    (version "0.3.68")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "backtrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04kyn691d8ykk0ib7692vk8hjbqqpbiaspwwfdhkdi29l26j06a3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-addr2line" ,rust-addr2line-0.20.0)
                        ("rust-cc" ,rust-cc-1.0.97)
                        ("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-miniz-oxide" ,rust-miniz-oxide-0.7.1)
                        ("rust-object" ,rust-object-0.31.1)
                        ("rust-rustc-demangle" ,rust-rustc-demangle-0.1.23))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bitflags-1.3.2
  (package
    (name "rust-bitflags")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bitflags-2.5.0
  (package
    (name "rust-bitflags")
    (version "2.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1h91vdx1il069vdiiissj8ymzj130rbiic0dbs77yxjgjim9sjyg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bstr-1.8.0
  (package
    (name "rust-bstr")
    (version "1.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bstr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0313sqdf0a40vhpnrlkf54zhr76rmlyxzhx00sq8822shfl36bsl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bumpalo-3.12.0
  (package
    (name "rust-bumpalo")
    (version "3.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bumpalo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0damxqdgqqzp3zyfwvbrg5hzx39kqgxnxl3yyq3kk4ald0jiw9hd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-bytes-1.4.0
  (package
    (name "rust-bytes")
    (version "1.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gkh3fk4fm9xv5znlib723h5md5sxsvbd5113sbxff6g1lmgvcl9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cassowary-0.3.0
  (package
    (name "rust-cassowary")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cassowary" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lvanj0gsk6pc1chqrh4k5k0vi1rfbgzmsk46dwy3nmrqyw711nz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cc-1.0.97
  (package
    (name "rust-cc")
    (version "1.0.97")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1d6rv3nk5q6lrr3mf7lifqpjr44slylsz3pw6pmn2k2cv1bm76h9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cfg-if-1.0.0
  (package
    (name "rust-cfg-if")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cfg-if" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1za0vb97n4brpzpv8lsbnzmq5r8f2b0cpqqr0sy8h5bn751xxwds"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-chardetng-0.1.17
  (package
    (name "rust-chardetng")
    (version "0.1.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "chardetng" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1spikjcnblwa5n1nnk46fxkwn86yfiqxgs47h4yaw23vbfvg1f0l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-chrono-0.4.38
  (package
    (name "rust-chrono")
    (version "0.4.38")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "chrono" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "009l8vc5p8750vn02z30mblg4pv2qhkbfizhfwmzc6vpy5nr67x2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-android-tzdata" ,rust-android-tzdata-0.1.1)
                        ("rust-iana-time-zone" ,rust-iana-time-zone-0.1.56)
                        ("rust-num-traits" ,rust-num-traits-0.2.15)
                        ("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-clipboard-win-5.3.1
  (package
    (name "rust-clipboard-win")
    (version "5.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clipboard-win" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ba48760mbzv6jsfxbqyhf3zdp86ix3p4adgrsd0vqj4a4zlgx3r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-error-code" ,rust-error-code-3.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-clru-0.6.1
  (package
    (name "rust-clru")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clru" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01xq2vm3pfkja6crsh5r7idzyhy0dhjd8dz2y1zn00rf62kiy6dq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-codespan-reporting-0.11.1
  (package
    (name "rust-codespan-reporting")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "codespan-reporting" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vkfay0aqk73d33kh79k1kqxx06ka22894xhqi89crnc6c6jff1m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-termcolor" ,rust-termcolor-1.2.0)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-content-inspector-0.2.4
  (package
    (name "rust-content-inspector")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "content_inspector" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0f1gwv4axxw9wck4a4jxlkm7xjjakb3616isll2k0s4chmpadgdp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-core-foundation-sys-0.8.4
  (package
    (name "rust-core-foundation-sys")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "core-foundation-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yhf471qj6snnm2mcswai47vsbc9w30y4abmdp4crb4av87sb5p4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cov-mark-1.1.0
  (package
    (name "rust-cov-mark")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cov-mark" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wv75ylrai556m388a40d50fxiyacmvm6qqz6va6qf1q04z3vylz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crc32fast-1.3.2
  (package
    (name "rust-crc32fast")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crc32fast" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03c8f29yx293yf43xar946xbls1g60c207m9drf8ilqhr25vsh5m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-channel-0.5.8
  (package
    (name "rust-crossbeam-channel")
    (version "0.5.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "004jz4wxp9k26z657i7rsh9s7586dklx2c5aqf1n3w1dgzvjng53"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-deque-0.8.3
  (package
    (name "rust-crossbeam-deque")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-deque" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vqczbcild7nczh5z116w8w46z991kpjyw7qxkf24c14apwdcvyf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9.15)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-epoch-0.9.15
  (package
    (name "rust-crossbeam-epoch")
    (version "0.9.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-epoch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ixwc3cq816wb8rlh3ix4jnybqbyyq4l61nwlx0mfm3ck0s148df"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16)
                        ("rust-memoffset" ,rust-memoffset-0.9.0)
                        ("rust-scopeguard" ,rust-scopeguard-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossbeam-utils-0.8.16
  (package
    (name "rust-crossbeam-utils")
    (version "0.8.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "153j0gikblz7n7qdvdi8pslhi008s1yp9cmny6vw07ad7pbb48js"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossterm-0.27.0
  (package
    (name "rust-crossterm")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pr413ki440xgddlmkrc4j1bfx1h8rpmll87zn8ykja1bm2gwxpl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.9.1)
                        ("rust-filedescriptor" ,rust-filedescriptor-0.8.2)
                        ("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-signal-hook-mio" ,rust-signal-hook-mio-0.2.3)
                        ("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-crossterm-winapi-0.9.1
  (package
    (name "rust-crossterm-winapi")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossterm_winapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxx-1.0.94
  (package
    (name "rust-cxx")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxx" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14zbar3nqjppw6y2a29k9cshi0m3j36dr97qdcqirzn3i5iin7zn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-cxxbridge-flags" ,rust-cxxbridge-flags-1.0.94)
                        ("rust-cxxbridge-macro" ,rust-cxxbridge-macro-1.0.94)
                        ("rust-link-cplusplus" ,rust-link-cplusplus-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxx-build-1.0.94
  (package
    (name "rust-cxx-build")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxx-build" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0yx0wnmc5hz2lfkp3b30chmh4z42bnp4lncgnfpg4bcnx04fgkhj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-codespan-reporting" ,rust-codespan-reporting-0.11.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-scratch" ,rust-scratch-1.0.5)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxxbridge-flags-1.0.94
  (package
    (name "rust-cxxbridge-flags")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxxbridge-flags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fzpqw12j8maki4m19fxrnf6xi2n988q9fgv799qq1p4wwm1fi3r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-cxxbridge-macro-1.0.94
  (package
    (name "rust-cxxbridge-macro")
    (version "1.0.94")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "cxxbridge-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1iavmbfq7c31jg20x62pk6n0ldpkd43xw99yi61gcsr2cj14hi93"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-dashmap-5.4.0
  (package
    (name "rust-dashmap")
    (version "5.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dashmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p2f5kr5hy7h4w3y2abprnxsaq36r685zfx1s8v0nfw2vbgpcw4h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-hashbrown" ,rust-hashbrown-0.12.3)
                        ("rust-lock-api" ,rust-lock-api-0.4.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot-core" ,rust-parking-lot-core-0.9.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-dunce-1.0.4
  (package
    (name "rust-dunce")
    (version "1.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dunce" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fqcbwfclldbknmawi69l6zyncaiqzxkpbybcb2cc7jmlxnqrkjn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-either-1.9.0
  (package
    (name "rust-either")
    (version "1.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "either" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01qy3anr7jal5lpc20791vxrw0nl6vksb5j7x56q2fycgcyy8sm2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-encoding-rs-0.8.34
  (package
    (name "rust-encoding-rs")
    (version "0.8.34")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "encoding_rs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nagpi1rjqdpvakymwmnlxzq908ncg868lml5b70n08bm82fjpdl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-encoding-rs-io-0.1.7
  (package
    (name "rust-encoding-rs-io")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "encoding_rs_io" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10ra4l688cdadd8h1lsbahld1zbywnnqv68366mbhamn3xjwbhqw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-encoding-rs" ,rust-encoding-rs-0.8.34))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-equivalent-1.0.0
  (package
    (name "rust-equivalent")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "equivalent" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18f0q7vd4awiv9bv5mda5yv8lfhpzxspiq8f2jdjqhw0bnygxgw8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-errno-0.3.8
  (package
    (name "rust-errno")
    (version "0.3.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "errno" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ia28ylfsp36i27g1qih875cyyy4by2grf80ki8vhgh6vinf8n52"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-error-code-3.0.0
  (package
    (name "rust-error-code")
    (version "3.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "error-code" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z27hg1c3xr7vchrw28h1qlc3xflrxfbmk8nci10ah5d7cnla7i8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-etcetera-0.8.0
  (package
    (name "rust-etcetera")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "etcetera" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hxrsn75dirbjhwgkdkh0pnpqrnq17ypyhjpjaypgax1hd91nv8k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-faster-hex-0.9.0
  (package
    (name "rust-faster-hex")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "faster-hex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10wi4vqbdpkamw4qvra1ijp4as2j7j1zc66g4rdr6h0xv8gb38m2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fastrand-2.0.1
  (package
    (name "rust-fastrand")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fastrand" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19flpv5zbzpf0rk4x77z4zf25in0brg8l7m304d3yrf47qvwxjr5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fern-0.6.2
  (package
    (name "rust-fern")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fern" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vpinainw32498p0zydmxc24yd3r6479pmhdfb429mfbji3c3w6r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-log" ,rust-log-0.4.21))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-filedescriptor-0.8.2
  (package
    (name "rust-filedescriptor")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "filedescriptor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vplyh0cw35kzq7smmp2ablq0zsknk5rkvvrywqsqfrchmjxk6bi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-filetime-0.2.23
  (package
    (name "rust-filetime")
    (version "0.2.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "filetime" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1za0sbq7fqidk8aaq9v7m9ms0sv8mmi49g6p5cphpan819q4gr0y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-redox-syscall" ,rust-redox-syscall-0.4.1)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-flate2-1.0.27
  (package
    (name "rust-flate2")
    (version "1.0.27")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "flate2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "045hvzdv3159qqjlgr5i3p4d346briddkipwyb5iv7ay17l8xjf6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crc32fast" ,rust-crc32fast-1.3.2)
                        ("rust-miniz-oxide" ,rust-miniz-oxide-0.7.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-fnv-1.0.7
  (package
    (name "rust-fnv")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fnv" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-form-urlencoded-1.2.1
  (package
    (name "rust-form-urlencoded")
    (version "1.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "form_urlencoded" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0milh8x7nl4f450s3ddhg57a3flcv6yq8hlkyk6fyr3mcb128dp1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-percent-encoding" ,rust-percent-encoding-2.3.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-core-0.3.30
  (package
    (name "rust-futures-core")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07aslayrn3lbggj54kci0ishmd1pr367fp7iks7adia1p05miinz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-executor-0.3.30
  (package
    (name "rust-futures-executor")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-executor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07dh08gs9vfll2h36kq32q9xd86xm6lyl9xikmmwlkqnmrrgqxm5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-futures-task" ,rust-futures-task-0.3.30)
                        ("rust-futures-util" ,rust-futures-util-0.3.30))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-task-0.3.30
  (package
    (name "rust-futures-task")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-task" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "013h1724454hj8qczp8vvs10qfiqrxr937qsrv6rhii68ahlzn1q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-futures-util-0.3.30
  (package
    (name "rust-futures-util")
    (version "0.3.30")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "futures-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0j0xqhcir1zf2dcbpd421kgw6wvsk0rpxflylcysn1rlp3g02r1x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-futures-task" ,rust-futures-task-0.3.30)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-pin-utils" ,rust-pin-utils-0.1.0)
                        ("rust-slab" ,rust-slab-0.4.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-getrandom-0.2.9
  (package
    (name "rust-getrandom")
    (version "0.2.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "getrandom" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r6p47dd9f9cgiwlxmksammbfwnhsv5hjkhd0kjsgnzanad1spn8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-wasi" ,rust-wasi-0.11.0+wasi-snapshot-preview1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gimli-0.27.3
  (package
    (name "rust-gimli")
    (version "0.27.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gimli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bpdnkyzi3vp2r0wglwrncbk451zhp46mdl83f6xj4gsmy20kj5n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-0.62.0
  (package
    (name "rust-gix")
    (version "0.62.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dl2098p28ws1564s1vipgrqwcf9qp5s765zczkywj6dni7wccan"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-config" ,rust-gix-config-0.36.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-diff" ,rust-gix-diff-0.43.0)
                        ("rust-gix-dir" ,rust-gix-dir-0.4.0)
                        ("rust-gix-discover" ,rust-gix-discover-0.31.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-macros" ,rust-gix-macros-0.1.4)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-odb" ,rust-gix-odb-0.60.0)
                        ("rust-gix-pack" ,rust-gix-pack-0.50.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-refspec" ,rust-gix-refspec-0.23.0)
                        ("rust-gix-revision" ,rust-gix-revision-0.27.0)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-gix-status" ,rust-gix-status-0.9.0)
                        ("rust-gix-submodule" ,rust-gix-submodule-0.10.0)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-traverse" ,rust-gix-traverse-0.39.0)
                        ("rust-gix-url" ,rust-gix-url-0.27.3)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-actor-0.31.1
  (package
    (name "rust-gix-actor")
    (version "0.31.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-actor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ilcn80rsh6gkzjslvx2m1qbgq0w4i2mf6capbl2xbamwjys7hs5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-attributes-0.22.2
  (package
    (name "rust-gix-attributes")
    (version "0.22.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-attributes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1j7cyx9vkffw8ln7dvc9jmx1rgiixia9mx130156l4xc5vs4iyzf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-kstring" ,rust-kstring-2.0.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-bitmap-0.2.11
  (package
    (name "rust-gix-bitmap")
    (version "0.2.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-bitmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bl7gqqlsdwngvvpgj6cby07cwidf7m0yk6wv473zqflrdkdnwd3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-chunk-0.4.8
  (package
    (name "rust-gix-chunk")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-chunk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lhcmzamr5rlcw8h9bvsjqn9dak1mwj3ng2i1djaf6wnd48pbj25"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-command-0.3.6
  (package
    (name "rust-gix-command")
    (version "0.3.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-command" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xsbllakppwpn3z5qzyivlqa7q068wry2a7dpr3xxcy41l10j07r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-shell-words" ,rust-shell-words-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-commitgraph-0.24.2
  (package
    (name "rust-gix-commitgraph")
    (version "0.24.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-commitgraph" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i0jrf5msqx8ry8z7skj4bxh1ifpfr8knh93i3qlmnl520qh5cgp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-chunk" ,rust-gix-chunk-0.4.8)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-config-0.36.1
  (package
    (name "rust-gix-config")
    (version "0.36.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-config" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rd61kgvdxlvz4d1f5z5zyiydh71jbmsq7jfs1x394z8jrcy103m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-config-value" ,rust-gix-config-value-0.14.6)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-config-value-0.14.6
  (package
    (name "rust-gix-config-value")
    (version "0.14.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-config-value" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0158q089kc151h3n0wk43fg4s28v0cjscll2r1w3mcx9n41n5l7v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-date-0.8.5
  (package
    (name "rust-gix-date")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-date" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1755v9rxk388x8ypinlmw5qcl2q9qxll3kinppghx1s1985162qq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-time" ,rust-time-0.3.23))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-diff-0.43.0
  (package
    (name "rust-gix-diff")
    (version "0.43.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-diff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "009dij9z56ycb8pwzkc9dk29kdqfhdyz9c1zs9n38mxr2m0w5yx5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-dir-0.4.0
  (package
    (name "rust-gix-dir")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-dir" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k7iypm36dff8rj14jska4hkqgz5kcicx3jll1ha1mrs44gkm56n"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-discover" ,rust-gix-discover-0.31.0)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-discover-0.31.0
  (package
    (name "rust-gix-discover")
    (version "0.31.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-discover" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cc22hhj3w95jwsl2r6cihys6k65xz03sivyyz510dzdhy8b9fk4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-ref" ,rust-gix-ref-0.43.0)
                        ("rust-gix-sec" ,rust-gix-sec-0.10.6)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-features-0.38.1
  (package
    (name "rust-gix-features")
    (version "0.38.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-features" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0drbqqn7bxf4zqbnc34zf5ls6ih1flrr79vs6sh4g8i0gl1m8hnv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crc32fast" ,rust-crc32fast-1.3.2)
                        ("rust-flate2" ,rust-flate2-1.0.27)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-prodash" ,rust-prodash-28.0.0)
                        ("rust-sha1-smol" ,rust-sha1-smol-1.0.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-walkdir" ,rust-walkdir-2.4.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-filter-0.11.1
  (package
    (name "rust-gix-filter")
    (version "0.11.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-filter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04pgk370hrb2fj8nfanmdblv6jlxnb1ar4fj7pxx5gv2mw0iy3aw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-command" ,rust-gix-command-0.3.6)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-packetline-blocking" ,rust-gix-packetline-blocking-0.17.4)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-fs-0.10.2
  (package
    (name "rust-gix-fs")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-fs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f1iwqvscsjvsvx23v974kczz27pmj0v9j1ig1kjj1ciwx04q672"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-glob-0.16.2
  (package
    (name "rust-gix-glob")
    (version "0.16.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-glob" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dbb2pn659ifmpdiaql8ipyjwn4vhhmdwrn3zknxn01wrd1xqav8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-hash-0.14.2
  (package
    (name "rust-gix-hash")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-hash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pjdlxbqxd9lbkccryfw2ghifiq3gz9h8ylliw0va8b16vvpsggr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-faster-hex" ,rust-faster-hex-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-hashtable-0.5.2
  (package
    (name "rust-gix-hashtable")
    (version "0.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-hashtable" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hp2m2rvbv0vav5lkq7d7bvx74qrb6w3hnj1rq3aq69wdzhq1pvx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-ignore-0.11.2
  (package
    (name "rust-gix-ignore")
    (version "0.11.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-ignore" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wb33zq9pn9hs4d5abg34hxf8l039aim9xii9p0rz7w2ynsbw3b4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-unicode-bom" ,rust-unicode-bom-2.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-index-0.32.0
  (package
    (name "rust-gix-index")
    (version "0.32.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-index" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wfk9nfr9cffn3rslnbrjj1nkdayp9dr62vw156fymc6y4n150rk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-filetime" ,rust-filetime-0.2.23)
                        ("rust-fnv" ,rust-fnv-1.0.7)
                        ("rust-gix-bitmap" ,rust-gix-bitmap-0.2.11)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-traverse" ,rust-gix-traverse-0.39.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-lock-13.0.0
  (package
    (name "rust-gix-lock")
    (version "13.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-lock" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qgkzhqcqqlir4c8dmzb3ldniqvdgf9k37c0gf5x3ry59lblc7k5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-macros-0.1.4
  (package
    (name "rust-gix-macros")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cj048i0a5xzqbv99514xfvhxwn833yzaclkmc9pfzp62j7l7zqx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-object-0.42.1
  (package
    (name "rust-gix-object")
    (version "0.42.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lg04riq9gggss7107m1p7clirs84fz2vl4198fdyc10wzx8wkrx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-odb-0.60.0
  (package
    (name "rust-gix-odb")
    (version "0.60.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-odb" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00rmm4kxvj0h0zww4wws3fp3dc859n2294nzzw0lgp7g5wyv9fz8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-pack" ,rust-gix-pack-0.50.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-quote" ,rust-gix-quote-0.4.12)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-pack-0.50.0
  (package
    (name "rust-gix-pack")
    (version "0.50.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-pack" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wfakf686z37j110l6ippmrp7jdnl2na3cxahyssczv7qwksv2xm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-clru" ,rust-clru-0.6.1)
                        ("rust-gix-chunk" ,rust-gix-chunk-0.4.8)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-packetline-blocking-0.17.4
  (package
    (name "rust-gix-packetline-blocking")
    (version "0.17.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-packetline-blocking" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jp1fz5mqbikh1xfrxyc1qv57lnh62crg2fmwhr4fa1xi8vl47f3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-faster-hex" ,rust-faster-hex-0.9.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-path-0.10.7
  (package
    (name "rust-gix-path")
    (version "0.10.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-path" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10w7abk2wcp0w2y943sdlsic3xc91d6qr29zjinilsbmykq3qqi3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-pathspec-0.7.3
  (package
    (name "rust-gix-pathspec")
    (version "0.7.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-pathspec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0v29z2dvp89smqi8cb48xs941db8rl2cwm4lf25gc45x7agphyfl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-config-value" ,rust-gix-config-value-0.14.6)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-quote-0.4.12
  (package
    (name "rust-gix-quote")
    (version "0.4.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-quote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zyrl6qchw2f6j25ian699ifzas3a5a2zrhflwjpmym3ksdlzzyb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-ref-0.43.0
  (package
    (name "rust-gix-ref")
    (version "0.43.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-ref" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rbvqwv5prqdi84qkf4xaxj16s7hkabjiwvdbns1q415p5lbljpx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31.1)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-lock" ,rust-gix-lock-13.0.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-tempfile" ,rust-gix-tempfile-13.0.0)
                        ("rust-gix-utils" ,rust-gix-utils-0.1.12)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-memmap2" ,rust-memmap2-0.9.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-refspec-0.23.0
  (package
    (name "rust-gix-refspec")
    (version "0.23.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-refspec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cl0z2nbid2jxp9l46q67npqx9p9s0akymxlv7j4z99lb234is6x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-revision" ,rust-gix-revision-0.27.0)
                        ("rust-gix-validate" ,rust-gix-validate-0.8.4)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-revision-0.27.0
  (package
    (name "rust-gix-revision")
    (version "0.27.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-revision" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1s5i3hi2pbd8fhsf40ym34i1769ri5yldi7vw8v5vgb935p1jd4y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-gix-trace" ,rust-gix-trace-0.1.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-revwalk-0.13.0
  (package
    (name "rust-gix-revwalk")
    (version "0.13.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-revwalk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z84i12hk5wqprdxrk31rhhk292bd3zw0cx386pflkl1ms9x79z0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-sec-0.10.6
  (package
    (name "rust-gix-sec")
    (version "0.10.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-sec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18brd8k370ddq19fbq04fkq8ry84b1ar0xz90gfj0fv49ac2gp7x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-status-0.9.0
  (package
    (name "rust-gix-status")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-status" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yg4s7nnnzs298c4v8w6wmakavv97jn8shs85vllwblmsazi7i2h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-filetime" ,rust-filetime-0.2.23)
                        ("rust-gix-diff" ,rust-gix-diff-0.43.0)
                        ("rust-gix-dir" ,rust-gix-dir-0.4.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-filter" ,rust-gix-filter-0.11.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-worktree" ,rust-gix-worktree-0.33.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-submodule-0.10.0
  (package
    (name "rust-gix-submodule")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-submodule" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1v131krfd5avz321qhqvhjdmp2p4bz1iyk6lxhplfqk3cq2ymdsg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-config" ,rust-gix-config-0.36.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-gix-pathspec" ,rust-gix-pathspec-0.7.3)
                        ("rust-gix-refspec" ,rust-gix-refspec-0.23.0)
                        ("rust-gix-url" ,rust-gix-url-0.27.3)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-tempfile-13.0.0
  (package
    (name "rust-gix-tempfile")
    (version "13.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-tempfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c6w4aacg6bs0nj3lypzp602lhpvrn3ks18d2a3zn05gnxapjcrd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5.4.0)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-trace-0.1.9
  (package
    (name "rust-gix-trace")
    (version "0.1.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-trace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zhm2lwqr070rq3bdn4b1zjs7mn7bhlkfgwfap6xspwi11s2c97r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-traverse-0.39.0
  (package
    (name "rust-gix-traverse")
    (version "0.39.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-traverse" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sranv60mih28lgrrw28hpfh2f6689x878wx406lik5h1719w0pl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24.2)
                        ("rust-gix-date" ,rust-gix-date-0.8.5)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-hashtable" ,rust-gix-hashtable-0.5.2)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-revwalk" ,rust-gix-revwalk-0.13.0)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-url-0.27.3
  (package
    (name "rust-gix-url")
    (version "0.27.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-url" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kyiah4kjqli6swc1frdlys6vpwi6lwysymy6az0y656vkmjkf0d"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-utils-0.1.12
  (package
    (name "rust-gix-utils")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p6lschmdrg1j9cd3rm6q96dyrvivzi2305d7ck1588gzpvjs69m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-fastrand" ,rust-fastrand-2.0.1)
                        ("rust-unicode-normalization" ,rust-unicode-normalization-0.1.22))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-validate-0.8.4
  (package
    (name "rust-gix-validate")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-validate" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i8m4jv53yn8nhp2niifb03p6lcyj1sd8d6x36n5x624c3hcd7z3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-thiserror" ,rust-thiserror-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-gix-worktree-0.33.0
  (package
    (name "rust-gix-worktree")
    (version "0.33.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gix-worktree" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1d0hlms63xjrjqkgrb1lixv85jpd8z4j995rmf8mynv9xzgqg6im"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-gix-attributes" ,rust-gix-attributes-0.22.2)
                        ("rust-gix-features" ,rust-gix-features-0.38.1)
                        ("rust-gix-fs" ,rust-gix-fs-0.10.2)
                        ("rust-gix-glob" ,rust-gix-glob-0.16.2)
                        ("rust-gix-hash" ,rust-gix-hash-0.14.2)
                        ("rust-gix-ignore" ,rust-gix-ignore-0.11.2)
                        ("rust-gix-index" ,rust-gix-index-0.32.0)
                        ("rust-gix-object" ,rust-gix-object-0.42.1)
                        ("rust-gix-path" ,rust-gix-path-0.10.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-globset-0.4.14
  (package
    (name "rust-globset")
    (version "0.4.14")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "globset" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qab0c1drpybgm4nc92lf8b46x0ap44c9y4k23rndgc5bfdkpnjp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-matcher-0.1.7
  (package
    (name "rust-grep-matcher")
    (version "0.1.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-matcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00mcjar5b6y1pwf0gjdywzgh1fnp6jl612n9qznwyfm420d198s7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-regex-0.1.12
  (package
    (name "rust-grep-regex")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0393d2ydvq8qdgss8k7pbnfdns7ramlhxjk7pifdldd8bh9vnj7p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-grep-matcher" ,rust-grep-matcher-0.1.7)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-grep-searcher-0.1.13
  (package
    (name "rust-grep-searcher")
    (version "0.1.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "grep-searcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0m1w35d9wnpv157g0adj3grqw0nkacqxv14mhgc65v4vyvj6llxs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bstr" ,rust-bstr-1.8.0)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-encoding-rs-io" ,rust-encoding-rs-io-0.1.7)
                        ("rust-grep-matcher" ,rust-grep-matcher-0.1.7)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-memmap2" ,rust-memmap2-0.9.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hashbrown-0.12.3
  (package
    (name "rust-hashbrown")
    (version "0.12.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hashbrown" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1268ka4750pyg2pbgsr43f0289l5zah4arir2k4igx5a8c6fg7la"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hashbrown-0.14.5
  (package
    (name "rust-hashbrown")
    (version "0.14.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hashbrown" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-allocator-api2" ,rust-allocator-api2-0.2.14))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-core-24.3.0
  (package
    (name "rust-helix-core")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-chrono" ,rust-chrono-0.4.38)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-encoding-rs" ,rust-encoding-rs-0.8.34)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-indoc" ,rust-indoc-2.0.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-nucleo" ,rust-nucleo-0.2.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-quickcheck" ,rust-quickcheck-1.0.3)
                        ("rust-regex" ,rust-regex-1.10.4)
                        ("rust-ropey" ,rust-ropey-1.6.1)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-smartstring" ,rust-smartstring-1.0.1)
                        ("rust-textwrap" ,rust-textwrap-0.16.1)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-tree-sitter" ,rust-tree-sitter-0.22.6)
                        ("rust-unicode-general-category" ,rust-unicode-general-category-0.6.0)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-dap-24.3.0
  (package
    (name "rust-helix-dap")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-fern" ,rust-fern-0.6.2)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-event-24.3.0
  (package
    (name "rust-helix-event")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-futures-executor" ,rust-futures-executor-0.3.30)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-loader-24.3.0
  (package
    (name "rust-helix-loader")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-cc" ,rust-cc-1.0.97)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-libloading" ,rust-libloading-0.8.3)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-threadpool" ,rust-threadpool-1.8.1)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-tree-sitter" ,rust-tree-sitter-0.22.6))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-lsp-24.3.0
  (package
    (name "rust-helix-lsp")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-futures-executor" ,rust-futures-executor-0.3.30)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-parsec" ,rust-helix-parsec-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-lsp-types" ,rust-lsp-types-0.95.1)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-thiserror" ,rust-thiserror-1.0.60)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-parsec-24.3.0
  (package
    (name "rust-helix-parsec")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-stdx-24.3.0
  (package
    (name "rust-helix-stdx")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-dunce" ,rust-dunce-1.0.4)
                        ("rust-etcetera" ,rust-etcetera-0.8.0)
                        ("rust-regex-cursor" ,rust-regex-cursor-0.1.4)
                        ("rust-ropey" ,rust-ropey-1.6.1)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-which" ,rust-which-6.0.1)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-term-24.3.0
  (package
    (name "rust-helix-term")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-chrono" ,rust-chrono-0.4.38)
                        ("rust-content-inspector" ,rust-content-inspector-0.2.4)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-fern" ,rust-fern-0.6.2)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-grep-regex" ,rust-grep-regex-0.1.12)
                        ("rust-grep-searcher" ,rust-grep-searcher-0.1.13)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-dap" ,rust-helix-dap-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-lsp" ,rust-helix-lsp-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-helix-tui" ,rust-helix-tui-24.3.0)
                        ("rust-helix-vcs" ,rust-helix-vcs-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-ignore" ,rust-ignore-0.4.22)
                        ("rust-indoc" ,rust-indoc-2.0.5)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-nucleo" ,rust-nucleo-0.2.1)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-open" ,rust-open-5.1.2)
                        ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.10.3)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-signal-hook-tokio" ,rust-signal-hook-tokio-0.3.1)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-termini" ,rust-termini-1.0.0)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (native-inputs (list git))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-tui-24.3.0
  (package
    (name "rust-helix-tui")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-cassowary" ,rust-cassowary-0.3.0)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-termini" ,rust-termini-1.0.0)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-vcs-24.3.0
  (package
    (name "rust-helix-vcs")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-gix" ,rust-gix-0.62.0)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-imara-diff" ,rust-imara-diff-0.1.5)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-helix-view-24.3.0
  (package
    (name "rust-helix-view")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1.0.83)
                        ("rust-arc-swap" ,rust-arc-swap-1.7.1)
                        ("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-chardetng" ,rust-chardetng-0.1.17)
                        ("rust-clipboard-win" ,rust-clipboard-win-5.3.1)
                        ("rust-crossterm" ,rust-crossterm-0.27.0)
                        ("rust-futures-util" ,rust-futures-util-0.3.30)
                        ("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-dap" ,rust-helix-dap-24.3.0)
                        ("rust-helix-event" ,rust-helix-event-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-lsp" ,rust-helix-lsp-24.3.0)
                        ("rust-helix-stdx" ,rust-helix-stdx-24.3.0)
                        ("rust-helix-tui" ,rust-helix-tui-24.3.0)
                        ("rust-helix-vcs" ,rust-helix-vcs-24.3.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-slotmap" ,rust-slotmap-1.0.7)
                        ("rust-tempfile" ,rust-tempfile-3.10.1)
                        ("rust-tokio" ,rust-tokio-1.37.0)
                        ("rust-tokio-stream" ,rust-tokio-stream-0.1.15)
                        ("rust-toml" ,rust-toml-0.8.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-hermit-abi-0.2.6
  (package
    (name "rust-hermit-abi")
    (version "0.2.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hermit-abi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1iz439yz9qzk3rh9pqx2rz5c4107v3qbd7bppfsbzb1mzr02clgf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-home-0.5.9
  (package
    (name "rust-home")
    (version "0.5.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "home" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19grxyg35rqfd802pcc9ys1q3lafzlcjcv2pl2s5q8xpyr5kblg3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-iana-time-zone-0.1.56
  (package
    (name "rust-iana-time-zone")
    (version "0.1.56")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "iana-time-zone" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z7ky37i5f5djwv7mlkgnjny885v1dm4b9bydqqh9pmp2iqws8h7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-android-system-properties" ,rust-android-system-properties-0.1.5)
                        ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8.4)
                        ("rust-iana-time-zone-haiku" ,rust-iana-time-zone-haiku-0.1.1)
                        ("rust-js-sys" ,rust-js-sys-0.3.61)
                        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.84)
                        ("rust-windows" ,rust-windows-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-iana-time-zone-haiku-0.1.1
  (package
    (name "rust-iana-time-zone-haiku")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "iana-time-zone-haiku" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jix9qrqxclj9r4wkg7d3fr987d77vdg3qy2c5hl4ry19wlaw0q7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cxx" ,rust-cxx-1.0.94)
                        ("rust-cxx-build" ,rust-cxx-build-1.0.94))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-idna-0.5.0
  (package
    (name "rust-idna")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "idna" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xhjrcjqq0l5bpzvdgylvpkgk94panxgsirzhjnnqfdgc4a9nkb3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-unicode-bidi" ,rust-unicode-bidi-0.3.13)
                        ("rust-unicode-normalization" ,rust-unicode-normalization-0.1.22))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ignore-0.4.22
  (package
    (name "rust-ignore")
    (version "0.4.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ignore" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wcaqpi6djqgi1brghrdyw4d5qgnwzhqrqyn4mar4vp677gi0s5l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8.3)
                        ("rust-globset" ,rust-globset-0.4.14)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-same-file" ,rust-same-file-1.0.6)
                        ("rust-walkdir" ,rust-walkdir-2.4.0)
                        ("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-imara-diff-0.1.5
  (package
    (name "rust-imara-diff")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "imara-diff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f0caw8bizfhrvyvzqix7ffmfnaynlyz7caljs5ipj8gsw51v379"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8.11)
                        ("rust-hashbrown" ,rust-hashbrown-0.12.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-indexmap-2.0.0
  (package
    (name "rust-indexmap")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indexmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pdnbvv6gnyxx2li8mks8p00fya3ynmhx3n6infpcy8a4gi7yiym"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-equivalent" ,rust-equivalent-1.0.0)
                        ("rust-hashbrown" ,rust-hashbrown-0.14.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-indoc-2.0.5
  (package
    (name "rust-indoc")
    (version "2.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indoc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dgjk49rkmx4kjy07k4b90qb5vl89smgb5rcw02n0q0x9ligaj5j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-is-docker-0.2.0
  (package
    (name "rust-is-docker")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is-docker" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1.19.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-is-wsl-0.4.0
  (package
    (name "rust-is-wsl")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "is-wsl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-is-docker" ,rust-is-docker-0.2.0)
                        ("rust-once-cell" ,rust-once-cell-1.19.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-itoa-1.0.6
  (package
    (name "rust-itoa")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itoa" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "19jc2sa3wvdc29zhgbwf3bayikq4rq18n20dbyg9ahd4hbsxjfj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-js-sys-0.3.61
  (package
    (name "rust-js-sys")
    (version "0.3.61")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "js-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c075apyc5fxp2sbgr87qcvq53pcjxmp05l47lzlhpn5a0hxwpa4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-kstring-2.0.0
  (package
    (name "rust-kstring")
    (version "2.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "kstring" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0isp7kmk4q0qxpcd877q77ykgb3ryfbmj18djmnwv8c210sncc7c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-static-assertions" ,rust-static-assertions-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-libc-0.2.154
  (package
    (name "rust-libc")
    (version "0.2.154")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0inkwrnwzrr1kw75x944ihdajrhhldkgg4irx1n19y9gp4w36x5f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-libloading-0.8.3
  (package
    (name "rust-libloading")
    (version "0.8.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libloading" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06awqx9glr3i7mcs6csscr8d6dbd9rrk6yglilmdmsmhns7ijahc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-link-cplusplus-1.0.8
  (package
    (name "rust-link-cplusplus")
    (version "1.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "link-cplusplus" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x84vvg7gn94x9zrvd67602h3ricmhlv19cpl2alzhqkqz4hglpc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-linux-raw-sys-0.4.12
  (package
    (name "rust-linux-raw-sys")
    (version "0.4.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "linux-raw-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mhlla3gk1jgn6mrq9s255rvvq8a1w3yk2vpjiwsd6hmmy1imkf4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-lock-api-0.4.9
  (package
    (name "rust-lock-api")
    (version "0.4.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lock_api" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1py41vk243hwk345nhkn5nw0bd4m03gzjmprdjqq6rg5dwv12l23"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-scopeguard" ,rust-scopeguard-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-log-0.4.21
  (package
    (name "rust-log")
    (version "0.4.21")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "log" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "074hldq1q8rlzq2s2qa8f25hj4s3gpw71w64vdwzjd01a4g8rvch"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-lsp-types-0.95.1
  (package
    (name "rust-lsp-types")
    (version "0.95.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lsp-types" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ra36fd4yr7lf5igfrdvwjx9g87z3a99mrjgzk9nq04viqxd6d4f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-json" ,rust-serde-json-1.0.116)
                        ("rust-serde-repr" ,rust-serde-repr-0.1.12)
                        ("rust-url" ,rust-url-2.5.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memchr-2.6.3
  (package
    (name "rust-memchr")
    (version "2.6.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memchr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p6kn2awqf47m3brk0nmajarhwhylg9969il8dm9bq87yxp2s8wg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memmap2-0.9.0
  (package
    (name "rust-memmap2")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memmap2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xckkh1i45g6y2g2lkb6b292pfj2wlrfk2fc4754q7dzga6s7ayy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-memoffset-0.9.0
  (package
    (name "rust-memoffset")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memoffset" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0v20ihhdzkfw1jx00a7zjpk2dcp5qjq6lz302nyqamd9c4f4nqss"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-miniz-oxide-0.7.1
  (package
    (name "rust-miniz-oxide")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miniz_oxide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ivl3rbbdm53bzscrd01g60l46lz5krl270487d8lhjvwl5hx0g7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-adler" ,rust-adler-1.0.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-mio-0.8.11
  (package
    (name "rust-mio")
    (version "0.8.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "034byyl0ardml5yliy1hmvx8arkmn9rv479pid794sm07ia519m4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-wasi" ,rust-wasi-0.11.0+wasi-snapshot-preview1)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-nucleo-0.2.1
  (package
    (name "rust-nucleo")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nucleo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wzx32bz4n68dcd3yw57195sz49hdhv9b75jikr5qiyfpks32lxf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-nucleo-matcher" ,rust-nucleo-matcher-0.2.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-rayon" ,rust-rayon-1.7.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-nucleo-matcher-0.2.0
  (package
    (name "rust-nucleo-matcher")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nucleo-matcher" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mxxz58acszkgxha4wy459fkcx6f8sh55d803wnid1p25x02nw0v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cov-mark" ,rust-cov-mark-1.1.0)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-traits-0.2.15
  (package
    (name "rust-num-traits")
    (version "0.2.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num-traits" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kfdqqw2ndz0wx2j75v9nbjx7d3mh3150zs4p5595y02rwsdx3jp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-cpus-1.15.0
  (package
    (name "rust-num-cpus")
    (version "1.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_cpus" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fsrjy3arnbcl41vz0gppya8d7d24cpkjgfflr3v8pivl4nrxb0g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.2.6)
                        ("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-num-threads-0.1.6
  (package
    (name "rust-num-threads")
    (version "0.1.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "num_threads" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i5vmffsv6g79z869flp1sja69g1gapddjagdw1k3q9f3l2cw698"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-object-0.31.1
  (package
    (name "rust-object")
    (version "0.31.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lb670wallm2i6rzrx2hz1afya4bfjzz6n9zhfw52l1bkxyndnlb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-once-cell-1.19.0
  (package
    (name "rust-once-cell")
    (version "1.19.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "once_cell" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14kvw7px5z96dk4dwdm1r9cqhhy2cyj1l5n5b29mynbb8yr15nrz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-open-5.1.2
  (package
    (name "rust-open")
    (version "5.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "open" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ciy22dh82rdgmmsiai2wksx7sj9abb4ddnmxpqxnpfqapw0z7s4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-is-wsl" ,rust-is-wsl-0.4.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-pathdiff" ,rust-pathdiff-0.2.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-parking-lot-0.12.2
  (package
    (name "rust-parking-lot")
    (version "0.12.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ys2dzz6cysjmwyivwxczl1ljpcf5cj4qmhdj07d5bkc9z5g0jky"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-lock-api" ,rust-lock-api-0.4.9)
                        ("rust-parking-lot-core" ,rust-parking-lot-core-0.9.7))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-parking-lot-core-0.9.7
  (package
    (name "rust-parking-lot-core")
    (version "0.9.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08cm5gg3a4jmr683x9dgih8vj66yn772kjvc8y1m0flyz6wwnsch"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-redox-syscall" ,rust-redox-syscall-0.2.16)
                        ("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-windows-sys" ,rust-windows-sys-0.45.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pathdiff-0.2.1
  (package
    (name "rust-pathdiff")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathdiff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pa4dcmb7lwir4himg1mnl97a05b2z0svczg62l8940pbim12dc8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-percent-encoding-2.3.1
  (package
    (name "rust-percent-encoding")
    (version "2.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "percent-encoding" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gi8wgx0dcy8rnv1kywdv98lwcx67hz0a0zwpib5v2i08r88y573"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pin-project-lite-0.2.12
  (package
    (name "rust-pin-project-lite")
    (version "0.2.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pin-project-lite" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "018a7yg2zjcfby4832yw7s9091mgy6syfm369fjpfykjy45ipk0j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pin-utils-0.1.0
  (package
    (name "rust-pin-utils")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pin-utils" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "117ir7vslsl2z1a7qzhws4pd01cg2d3338c47swjyvqv2n60v1wb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-proc-macro2-1.0.76
  (package
    (name "rust-proc-macro2")
    (version "1.0.76")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "136cp0fgl6rg5ljm3b1xpc0bn0lyvagzzmxvbxgk5hxml36mdz4m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-prodash-28.0.0
  (package
    (name "rust-prodash")
    (version "28.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "prodash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y9d16s79168rc5k2djjb16vjcx27yargbfb6xz6m2mq4r6jcjkl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-pulldown-cmark-0.10.3
  (package
    (name "rust-pulldown-cmark")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pulldown-cmark" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14rrzqnv6j64j75558m7gzw6lc9b24057v6415smx1z7cvm9p5vn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-unicase" ,rust-unicase-2.6.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-quickcheck-1.0.3
  (package
    (name "rust-quickcheck")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quickcheck" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mjhkfqwrb8mdyxdqr4zzbj1rm5dfx25n9zcc25lb6fxwiw673sq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-rand" ,rust-rand-0.8.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-quote-1.0.35
  (package
    (name "rust-quote")
    (version "1.0.35")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vv8r2ncaz4pqdr78x7f138ka595sp2ncr1sa2plm4zxbsmwj7i9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rand-0.8.5
  (package
    (name "rust-rand")
    (version "0.8.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "013l6931nn7gkc23jz5mm3qdhf93jjf0fg64nz2lp4i51qd8vbrl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-rand-core" ,rust-rand-core-0.6.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rand-core-0.6.4
  (package
    (name "rust-rand-core")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.2.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rayon-1.7.0
  (package
    (name "rust-rayon")
    (version "1.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fzh8w5ds1qjhilll4rkpd3kimw70zi5605wprxcig1pdqczab8x"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-either" ,rust-either-1.9.0)
                        ("rust-rayon-core" ,rust-rayon-core-1.11.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rayon-core-1.11.0
  (package
    (name "rust-rayon-core")
    (version "1.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13dymrhhdilzpbfh3aylv6ariayqdfk614b3frvwixb6d6yrb3sb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5.8)
                        ("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8.3)
                        ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8.16)
                        ("rust-num-cpus" ,rust-num-cpus-1.15.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-redox-syscall-0.2.16
  (package
    (name "rust-redox-syscall")
    (version "0.2.16")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16jicm96kjyzm802cxdd1k9jmcph0db1a4lhslcnhjsvhp0mhnpv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-redox-syscall-0.4.1
  (package
    (name "rust-redox-syscall")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "redox_syscall" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aiifyz5dnybfvkk4cdab9p2kmphag1yad6iknc7aszlxxldf8j7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1.3.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-1.10.4
  (package
    (name "rust-regex")
    (version "1.10.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k5sb0h2mkwf51ab0gvv3x38jp1q7wgxf63abfbhi0wwvvgxn5y1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-automata-0.4.5
  (package
    (name "rust-regex-automata")
    (version "0.4.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-automata" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1karc80mx15z435rm1jg3sqylnc58nxi15gqypcd1inkzzpqgfav"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1.1.2)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-cursor-0.1.4
  (package
    (name "rust-regex-cursor")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-cursor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sbi1xr9201hd5c40779gfnmlnmrb4yqs4jj07d6zbp3znsjfhxf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-log" ,rust-log-0.4.21)
                        ("rust-memchr" ,rust-memchr-2.6.3)
                        ("rust-regex-automata" ,rust-regex-automata-0.4.5)
                        ("rust-regex-syntax" ,rust-regex-syntax-0.8.2)
                        ("rust-ropey" ,rust-ropey-1.6.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-regex-syntax-0.8.2
  (package
    (name "rust-regex-syntax")
    (version "0.8.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-syntax" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17rd2s8xbiyf6lb4aj2nfi44zqlj98g2ays8zzj2vfs743k79360"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ropey-1.6.1
  (package
    (name "rust-ropey")
    (version "1.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ropey" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dckf3likfi1my2ilqwhq2ifsm9iq8cayg6ws7fpa6nd1d11whck"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-smallvec" ,rust-smallvec-1.13.2)
                        ("rust-str-indices" ,rust-str-indices-0.4.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rustc-demangle-0.1.23
  (package
    (name "rust-rustc-demangle")
    (version "0.1.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustc-demangle" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xnbk2bmyzshacjm2g1kd4zzv2y2az14bw3sjccq5qkpmsfvn9nn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-rustix-0.38.34
  (package
    (name "rust-rustix")
    (version "0.38.34")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rustix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03vkqa2ism7q56rkifyy8mns0wwqrk70f4i4fd53r97p8b05xp3h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2.5.0)
                        ("rust-errno" ,rust-errno-0.3.8)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.4.12)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-ryu-1.0.13
  (package
    (name "rust-ryu")
    (version "1.0.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ryu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hchlxvjmsz51l06c7r8zwj45pm8bhc3x3czcih27rkx8v03j4zr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-same-file-1.0.6
  (package
    (name "rust-same-file")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "same-file" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-scopeguard-1.1.0
  (package
    (name "rust-scopeguard")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "scopeguard" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kbqm85v43rq92vx7hfiay6pmcga03vrjbbfwqpyj3pwsg3b16nj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-scratch-1.0.5
  (package
    (name "rust-scratch")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "scratch" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hchqnh9ggsrisyaaasfqa0r484r75xh2lw87w6fcnz9bh1xp4hp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-1.0.200
  (package
    (name "rust-serde")
    (version "1.0.200")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kyfkis7jg71wak6l2bfpy7gffpx22ha7vgpm8hhwz6njk6gkinx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-derive-1.0.200
  (package
    (name "rust-serde-derive")
    (version "1.0.200")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jrb95pssal86p6kbh188p14893mvgn75mafr74f7kh0jimh8vw5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-json-1.0.116
  (package
    (name "rust-serde-json")
    (version "1.0.116")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_json" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04r81f5myl41zrsyghnbmbl39c4n3azldb9zxfafnzyi4rqxn5ry"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-ryu" ,rust-ryu-1.0.13)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-repr-0.1.12
  (package
    (name "rust-serde-repr")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_repr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aqcsjq5wc51qnflfqzkkrh5ckcmi3c7ypx2amg0i1664088iv5w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-serde-spanned-0.6.5
  (package
    (name "rust-serde-spanned")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_spanned" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hgh6s3jjwyzhfk3xwb6pnnr1misq9nflwq0f026jafi37s24dpb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-sha1-smol-1.0.0
  (package
    (name "rust-sha1-smol")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sha1_smol" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04nhbhvsk5ms1zbshs80iq5r1vjszp2xnm9f0ivj38q3dhc4f6mf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-shell-words-1.1.0
  (package
    (name "rust-shell-words")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "shell-words" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1plgwx8r0h5ismbbp6cp03740wmzgzhip85k5hxqrrkaddkql614"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-0.3.17
  (package
    (name "rust-signal-hook")
    (version "0.3.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0098nsah04spqf3n8niirmfym4wsdgjl57c78kmzijlq8xymh8c6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-signal-hook-registry" ,rust-signal-hook-registry-1.4.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-mio-0.2.3
  (package
    (name "rust-signal-hook-mio")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-mio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bwrrbd0lhwzlf63708vyzlh20693s5bg5s0ak6adjbyycajxb99"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-registry-1.4.1
  (package
    (name "rust-signal-hook-registry")
    (version "1.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-registry" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18crkkw5k82bvcx088xlf5g4n3772m24qhzgfan80nda7d3rn8nq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-signal-hook-tokio-0.3.1
  (package
    (name "rust-signal-hook-tokio")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "signal-hook-tokio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07nggsi80jv39xisdk2r7cik7hx2d2qa2sivvqkpxqxidzvl2ci1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-signal-hook" ,rust-signal-hook-0.3.17)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-slab-0.4.8
  (package
    (name "rust-slab")
    (version "0.4.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slab" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0bgwxig8gkqp6gz8rvrpdj6qwa10karnsxwx7wsj5ay8kcf3aa35"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-slotmap-1.0.7
  (package
    (name "rust-slotmap")
    (version "1.0.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "slotmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0amqb2fn9lcy1ri0risblkcp88dl0rnfmynw7lx0nqwza77lmzyv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smallvec-1.13.2
  (package
    (name "rust-smallvec")
    (version "1.13.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smallvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rsw5samawl3wsw6glrsb127rx6sh89a8wyikicw6dkdcjd1lpiw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smartstring-1.0.1
  (package
    (name "rust-smartstring")
    (version "1.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smartstring" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0agf4x0jz79r30aqibyfjm1h9hrjdh0harcqcvb2vapv7rijrdrz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1.1.0)
                        ("rust-static-assertions" ,rust-static-assertions-1.1.0)
                        ("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-smawk-0.3.1
  (package
    (name "rust-smawk")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smawk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hv0q1mw1r1brk7v3g4a80j162p7g1dri4bdidykrakzfqjd4ypn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-socket2-0.5.5
  (package
    (name "rust-socket2")
    (version "0.5.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "socket2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sgq315f1njky114ip7wcy83qlphv9qclprfjwvxcpfblmcsqpvv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-libc" ,rust-libc-0.2.154)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-static-assertions-1.1.0
  (package
    (name "rust-static-assertions")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "static_assertions" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-str-indices-0.4.1
  (package
    (name "rust-str-indices")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "str_indices" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pfnfjmkandxqmq04nqa5nwgsggq8jp8z4xivr9fqhk8j9j620jz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-syn-1.0.109
  (package
    (name "rust-syn")
    (version "1.0.109")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-syn-2.0.48
  (package
    (name "rust-syn")
    (version "2.0.48")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gqgfygmrxmp8q32lia9p294kdd501ybn6kn2h4gqza0irik2d8g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-unicode-ident" ,rust-unicode-ident-1.0.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tempfile-3.10.1
  (package
    (name "rust-tempfile")
    (version "3.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tempfile" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wdzz35ri168jn9al4s1g2rnsrr5ci91khgarc2rvpb3nappzdw5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-fastrand" ,rust-fastrand-2.0.1)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-windows-sys" ,rust-windows-sys-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-termcolor-1.2.0
  (package
    (name "rust-termcolor")
    (version "1.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termcolor" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dmrbsljxpfng905qkaxljlwjhv8h0i3969cbiv5rb7y8a4wymdy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-termini-1.0.0
  (package
    (name "rust-termini")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "termini" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n8dvbwkp2k673xqwivb01iqg5ir91zgpwhwngpcb2yrgpc43m1a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-home" ,rust-home-0.5.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-textwrap-0.16.1
  (package
    (name "rust-textwrap")
    (version "0.16.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fgqn3mg9gdbjxwfxl76fg0qiq53w3mk4hdh1x40jylnz39k9m13"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-smawk" ,rust-smawk-0.3.1)
                        ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1.5)
                        ("rust-unicode-width" ,rust-unicode-width-0.1.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-thiserror-1.0.60
  (package
    (name "rust-thiserror")
    (version "1.0.60")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "067wi7pb1zn9jhhk82w0ppmvjwa00nwkp4m9j77rvpaqra1r17jp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-thiserror-impl" ,rust-thiserror-impl-1.0.60))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-thiserror-impl-1.0.60
  (package
    (name "rust-thiserror-impl")
    (version "1.0.60")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "thiserror-impl" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0945q2hk1rqdzjz2zqakxbddwm4h26k5c0wdncdarhvfq10h0iz2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-threadpool-1.8.1
  (package
    (name "rust-threadpool")
    (version "1.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "threadpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1amgfyzvynbm8pacniivzq9r0fh3chhs7kijic81j76l6c5ycl6h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-num-cpus" ,rust-num-cpus-1.15.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-0.3.23
  (package
    (name "rust-time")
    (version "0.3.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ihlz293f792cd7v7qhpkx8rqkzs0fr77bzddw8msfpld309kqsr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-itoa" ,rust-itoa-1.0.6)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-num-threads" ,rust-num-threads-0.1.6)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-time-core" ,rust-time-core-0.1.1)
                        ("rust-time-macros" ,rust-time-macros-0.2.10))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-core-0.1.1
  (package
    (name "rust-time-core")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yz6d246zbmx9v6wpfg1jyfjlsgagirz7km96pr1mp6snkpzn03k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-time-macros-0.2.10
  (package
    (name "rust-time-macros")
    (version "0.2.10")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i566vxybz24i2rdax2d0m86fk2m45rarrapnxk6gj7kjyl1bfln"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-time-core" ,rust-time-core-0.1.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tinyvec-1.6.0
  (package
    (name "rust-tinyvec")
    (version "1.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tinyvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0l6bl2h62a5m44jdnpn7lmj14rd44via8180i7121fvm73mmrk47"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-tinyvec-macros" ,rust-tinyvec-macros-0.1.1))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tinyvec-macros-0.1.1
  (package
    (name "rust-tinyvec-macros")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tinyvec_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "081gag86208sc3y6sdkshgw3vysm5d34p431dzw0bshz66ncng0z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-1.37.0
  (package
    (name "rust-tokio")
    (version "1.37.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11v7qhvpwsf976frqgrjl1jy308bdkxq195gb38cypx7xkzypnqs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3.68)
                        ("rust-bytes" ,rust-bytes-1.4.0)
                        ("rust-libc" ,rust-libc-0.2.154)
                        ("rust-mio" ,rust-mio-0.8.11)
                        ("rust-num-cpus" ,rust-num-cpus-1.15.0)
                        ("rust-parking-lot" ,rust-parking-lot-0.12.2)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-signal-hook-registry" ,rust-signal-hook-registry-1.4.1)
                        ("rust-socket2" ,rust-socket2-0.5.5)
                        ("rust-tokio-macros" ,rust-tokio-macros-2.2.0)
                        ("rust-windows-sys" ,rust-windows-sys-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-macros-2.2.0
  (package
    (name "rust-tokio-macros")
    (version "2.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fwjy4vdx1h9pi4g2nml72wi0fr27b5m954p13ji9anyy8l1x2jv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tokio-stream-0.1.15
  (package
    (name "rust-tokio-stream")
    (version "0.1.15")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tokio-stream" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1brpbsqyg8yfmfc4y0j9zxvc8xsxjc31d48kb0g6jvpc1fgchyi6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3.30)
                        ("rust-pin-project-lite" ,rust-pin-project-lite-0.2.12)
                        ("rust-tokio" ,rust-tokio-1.37.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-0.8.12
  (package
    (name "rust-toml")
    (version "0.8.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18rs8cbzmapwcxf0lpdwz84fmsgp9h5vv6xay5d4m2r0x12ibpg9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-spanned" ,rust-serde-spanned-0.6.5)
                        ("rust-toml-datetime" ,rust-toml-datetime-0.6.5)
                        ("rust-toml-edit" ,rust-toml-edit-0.22.8))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-datetime-0.6.5
  (package
    (name "rust-toml-datetime")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml_datetime" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wds4pm2cn6agd38f0ivm65xnc7c7bmk9m0fllcaq82nd3lz8l1m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-toml-edit-0.22.8
  (package
    (name "rust-toml-edit")
    (version "0.22.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "toml_edit" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kcnmshwvh0afl87358d1ccrqb7fcanyam3jhrvs06qc3s0ij8n1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2.0.0)
                        ("rust-serde" ,rust-serde-1.0.200)
                        ("rust-serde-spanned" ,rust-serde-spanned-0.6.5)
                        ("rust-toml-datetime" ,rust-toml-datetime-0.6.5)
                        ("rust-winnow" ,rust-winnow-0.6.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-tree-sitter-0.22.6
  (package
    (name "rust-tree-sitter")
    (version "0.22.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tree-sitter" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1jkda5n43m7cxmx2h7l20zxc74nf9v1wpm66gvgxrm5drscw8z6z"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cc" ,rust-cc-1.0.97)
                        ("rust-regex" ,rust-regex-1.10.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicase-2.6.0
  (package
    (name "rust-unicase")
    (version "2.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicase" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xmlbink4ycgxrkjspp0mf7pghcx4m7vxq7fpfm04ikr2zk7pwsh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-version-check" ,rust-version-check-0.9.4))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-bidi-0.3.13
  (package
    (name "rust-unicode-bidi")
    (version "0.3.13")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-bidi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q0l7rdkiq54pan7a4ama39dgynaf1mnjj1nddrq1w1zayjqp24j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-bom-2.0.2
  (package
    (name "rust-unicode-bom")
    (version "2.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-bom" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lh5ckmw59v908mddgfgv19vv6yb0sm08z8adppd3m7hr5q0rscq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-general-category-0.6.0
  (package
    (name "rust-unicode-general-category")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-general-category" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rv9715c94gfl0hzy4f2a9lw7i499756bq2968vqwhr1sb0wi092"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-ident-1.0.8
  (package
    (name "rust-unicode-ident")
    (version "1.0.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-ident" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1x4v4v95fv9gn5zbpm23sa9awjvmclap1wh1lmikmw9rna3llip5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-linebreak-0.1.5
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-linebreak" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "07spj2hh3daajg335m4wdav6nfkl0f6c0q72lc37blr97hych29v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-normalization-0.1.22
  (package
    (name "rust-unicode-normalization")
    (version "0.1.22")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-normalization" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08d95g7b1irc578b2iyhzv4xhsa4pfvwsqxcl9lbcpabzkq16msw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-tinyvec" ,rust-tinyvec-1.6.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-segmentation-1.11.0
  (package
    (name "rust-unicode-segmentation")
    (version "1.11.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-segmentation" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00kjpwp1g8fqm45drmwivlacn3y9jx73bvs09n6s3x73nqi7vj6l"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-unicode-width-0.1.12
  (package
    (name "rust-unicode-width")
    (version "0.1.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-width" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mk6mybsmi5py8hf8zy9vbgs4rw4gkdqdq3gzywd9kwf2prybxb8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-url-2.5.0
  (package
    (name "rust-url")
    (version "2.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "url" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cs65961miawncdg2z20171w0vqrmraswv2ihdpd8lxp7cp31rii"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-form-urlencoded" ,rust-form-urlencoded-1.2.1)
                        ("rust-idna" ,rust-idna-0.5.0)
                        ("rust-percent-encoding" ,rust-percent-encoding-2.3.1)
                        ("rust-serde" ,rust-serde-1.0.200))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-version-check-0.9.4
  (package
    (name "rust-version-check")
    (version "0.9.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "version_check" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gs8grwdlgh0xq660d7wr80x14vxbizmd8dbp29p2pdncx8lp1s9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-walkdir-2.4.0
  (package
    (name "rust-walkdir")
    (version "2.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "walkdir" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vjl9fmfc4v8k9ald23qrpcbyb8dl1ynyq8d516cm537r1yqa7fp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-same-file" ,rust-same-file-1.0.6)
                        ("rust-winapi-util" ,rust-winapi-util-0.1.5))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasi-0.11.0+wasi-snapshot-preview1
  (package
    (name "rust-wasi")
    (version "0.11.0+wasi-snapshot-preview1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08z4hxwkpdpalxjps1ai9y7ihin26y9f476i53dv98v45gkqg3cw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-0.2.84
  (package
    (name "rust-wasm-bindgen")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fx5gh0b4n6znfa3blz92wn1k4bbiysyq9m95s7rn3gk46ydry1i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1.0.0)
                        ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-backend-0.2.84
  (package
    (name "rust-wasm-bindgen-backend")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-backend" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ffc0wb293ha56i66f830x7f8aa2xql69a21lrasy1ncbgyr1klm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3.12.0)
                        ("rust-log" ,rust-log-0.4.21)
                        ("rust-once-cell" ,rust-once-cell-1.19.0)
                        ("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-1.0.109)
                        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-macro-0.2.84
  (package
    (name "rust-wasm-bindgen-macro")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1idlq28awqhq8rclb22rn5xix82w9a4rgy11vkapzhzd1dygf8ac"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-quote" ,rust-quote-1.0.35)
                        ("rust-wasm-bindgen-macro-support" ,rust-wasm-bindgen-macro-support-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-macro-support-0.2.84
  (package
    (name "rust-wasm-bindgen-macro-support")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-macro-support" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xm56lpi0rihh8ny7x085dgs3jdm47spgqflb98wghyadwq83zra"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-1.0.109)
                        ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2.84)
                        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.84))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-wasm-bindgen-shared-0.2.84
  (package
    (name "rust-wasm-bindgen-shared")
    (version "0.2.84")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wasm-bindgen-shared" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pcvk1c97r1pprzfaxxn359r0wqg5bm33ylbwgjh8f4cwbvzwih0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-which-6.0.1
  (package
    (name "rust-which")
    (version "6.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "which" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mz0vijj9qvsmfqkjqw3wf8zqn19p2x0gg7gzfnhaa1bibsy84c2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-either" ,rust-either-1.9.0)
                        ("rust-home" ,rust-home-0.5.9)
                        ("rust-rustix" ,rust-rustix-0.38.34)
                        ("rust-winsafe" ,rust-winsafe-0.0.19))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-0.3.9
  (package
    (name "rust-winapi")
    (version "0.3.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi-i686-pc-windows-gnu" ,rust-winapi-i686-pc-windows-gnu-0.4.0)
                        ("rust-winapi-x86-64-pc-windows-gnu" ,rust-winapi-x86-64-pc-windows-gnu-0.4.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (package
    (name "rust-winapi-i686-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-i686-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-util-0.1.5
  (package
    (name "rust-winapi-util")
    (version "0.1.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-util" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y71bp7f6d536czj40dhqk0d55wfbbwqfp2ymqf1an5ibgl6rv3h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3.9))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (package
    (name "rust-winapi-x86-64-pc-windows-gnu")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winapi-x86_64-pc-windows-gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-0.48.0
  (package
    (name "rust-windows")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "03vh89ilnxdxdh0n9np4ns4m10fvm93h3b0cc05ipg3qq1mqi1p6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.45.0
  (package
    (name "rust-windows-sys")
    (version "0.45.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1l36bcqm4g89pknfp8r9rl1w4bn017q6a8qlx8viv0xjxzjkna3m"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.42.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.48.0
  (package
    (name "rust-windows-sys")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-sys-0.52.0
  (package
    (name "rust-windows-sys")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gd3v4ji88490zgb6b5mq5zgbvwv7zx1ibn8v3x83rwcdbryaar8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.42.2
  (package
    (name "rust-windows-targets")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0wfhnib2fisxlx8c507dbmh97kgij4r6kcxdi0f9nk6l1k080lcf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.42.2)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.42.2)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.42.2)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.42.2)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.42.2)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.42.2)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.42.2))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.48.0
  (package
    (name "rust-windows-targets")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1mfzg94w0c8h4ya9sva7rra77f3iy1712af9b6bwg03wrpqbc7kv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.48.0)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.48.0)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.48.0)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.48.0)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.48.0)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.48.0)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.48.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-targets-0.52.0
  (package
    (name "rust-windows-targets")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows-targets" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1kg7a27ynzw8zz3krdgy6w5gbqcji27j1sz4p7xk2j5j8082064a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52.0)
                        ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52.0)
                        ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52.0)
                        ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52.0)
                        ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52.0)
                        ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52.0)
                        ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52.0))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.42.2
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y4q0qmvl0lvp7syxvfykafvmwal5hrjb4fmv04bqs0bawc52yjr"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.48.0
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g71yxi61c410pwzq05ld7si4p9hyx6lf5fkw21sinvr3cp5gbli"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-gnullvm-0.52.0
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1shmn1kbdc0bpphcxz0vlph96bxz0h1jlmh93s9agf2dbpin8xyb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.42.2
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hsdikjl5sa1fva5qskpwlxzpc5q9l909fpl1w6yy1hglrj8i3p0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.48.0
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wvwipchhywcjaw73h998vzachf668fpqccbhrxzrz5xszh2gvxj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-aarch64-msvc-0.52.0
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_aarch64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vvmy1ypvzdvxn9yf0b8ygfl85gl2gpcyvsvqppsmlpisil07amv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.42.2
  (package
    (name "rust-windows-i686-gnu")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kx866dfrby88lqs9v1vgmrkk1z6af9lhaghh5maj7d4imyr47f6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.48.0
  (package
    (name "rust-windows-i686-gnu")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hd2v9kp8fss0rzl83wzhw0s5z8q1b4875m6s1phv0yvlxi1jak2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-gnu-0.52.0
  (package
    (name "rust-windows-i686-gnu")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04zkglz4p3pjsns5gbz85v4s5aw102raz4spj4b0lmm33z5kg1m2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.42.2
  (package
    (name "rust-windows-i686-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0q0h9m2aq1pygc199pa5jgc952qhcnf0zn688454i7v4xjv41n24"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.48.0
  (package
    (name "rust-windows-i686-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "004fkyqv3if178xx9ksqc4qqv8sz8n72mpczsr2vy8ffckiwchj5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-i686-msvc-0.52.0
  (package
    (name "rust-windows-i686-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_i686_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16kvmbvx0vr0zbgnaz6nsks9ycvfh5xp05bjrhq65kj623iyirgz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.42.2
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0dnbf2xnp3xrvy8v9mgs3var4zq9v9yh9kv79035rdgyp2w15scd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.48.0
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1cblz5m6a8q6ha09bz4lz233dnq5sw2hpra06k9cna3n3xk8laya"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnu-0.52.0
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnu" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zdy4qn178sil5sdm63lm7f0kkcjg6gvdwmcprd2yjmwn8ns6vrx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.42.2
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "18wl9r8qbsl475j39zvawlidp1bsbinliwfymr43fibdld31pm16"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.48.0
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lxryz3ysx0145bf3i38jkr7f9nxiym8p3syklp8f20yyk0xp5kq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-gnullvm-0.52.0
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_gnullvm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17lllq4l2k1lqgcnw1cccphxp9vs7inq99kjlm2lfl9zklg7wr8s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.42.2
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.42.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w5r0q0yzx827d10dpjza2ww0j8iajqhmb54s735hhaj66imvv4s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.48.0
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.48.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ipr1knzj2rwjygyllfi5mkd0ihnbi3r61gag5n2jgyk5bmyl8s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-windows-x86-64-msvc-0.52.0
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.52.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_x86_64_msvc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "012wfq37f18c09ij5m6rniw7xxn5fcvrxbqd0wd8vgnl3hfn9yfz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winnow-0.6.5
  (package
    (name "rust-winnow")
    (version "0.6.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winnow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1f0m48kfdvds456b1i1qd6ia9w3mckk2jf4q6z94snpdcw741ynz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-memchr" ,rust-memchr-2.6.3))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-winsafe-0.0.19
  (package
    (name "rust-winsafe")
    (version "0.0.19")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winsafe" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-xtask-24.3.0
  (package
    (name "rust-xtask")
    (version "24.3.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:phases (modify-phases %standard-phases
                                (add-after 'unpack 'chdir
                                           (lambda _
                                             (chdir "xtask"))))
        #:cargo-inputs (("rust-helix-core" ,rust-helix-core-24.3.0)
                        ("rust-helix-loader" ,rust-helix-loader-24.3.0)
                        ("rust-helix-term" ,rust-helix-term-24.3.0)
                        ("rust-helix-view" ,rust-helix-view-24.3.0)
                        ("rust-toml" ,rust-toml-0.8.12))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-zerocopy-0.7.31
  (package
    (name "rust-zerocopy")
    (version "0.7.31")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gcfyrmlrhmsz16qxjp2qzr6vixyaw1p04zl28f08lxkvfz62h0w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-zerocopy-derive" ,rust-zerocopy-derive-0.7.31))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define rust-zerocopy-derive-0.7.31
  (package
    (name "rust-zerocopy-derive")
    (version "0.7.31")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06k0zk4x4n9s1blgxmxqb1g81y8q334aayx61gyy6v9y1dajkhdk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t
        #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1.0.76)
                        ("rust-quote" ,rust-quote-1.0.35)
                        ("rust-syn" ,rust-syn-2.0.48))))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

(define helix
  (package
    (name "helix")
    (version %helix-version)
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/helix-editor/helix")
               (commit "00e9e5eadef16dd20cd24d303a664faaeb8faa56")))
        (patches
          (search-patches
            "helix-disable-grammar-fetch.patch"
            "helix-remove-unsupported-grammars.patch"))
        (modules '((guix build utils)))
        (snippet
          '(begin
             (delete-file-recursively "Cargo.lock")))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1zmp367irw84crsdq2mbh4kj5p8nmsdb096f9bc86r5ac73mp83c"))))
    (build-system cargo-build-system)
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
             (add-after 'unpack 'unpack-additional-sources
                        (lambda _
                          (for-each make-file-writable (find-files "."))
                          (for-each
                            (match-lambda
                              ((dst src)
                               (let* ((dest (string-append "runtime/grammars/sources/" dst)))
                                 (copy-recursively src dest)
                                 (for-each make-file-writable (find-files dest)))))
                            '(("ada" #$grammar-ada)
                              ("adl" #$grammar-adl)
                              ("agda" #$grammar-agda)
                              ("astro" #$grammar-astro)
                              ("awk" #$grammar-awk)
                              ("bash" #$grammar-bash)
                              ("bass" #$grammar-bass)
                              ("beancount" #$grammar-beancount)
                              ("bibtex" #$grammar-bibtex)
                              ("bicep" #$grammar-bicep)
                              ("bitbake" #$grammar-bitbake)
                              ("blade" #$grammar-blade)
                              ("blueprint" #$grammar-blueprint)
                              ("c" #$grammar-c)
                              ("capnp" #$grammar-capnp)
                              ("cel" #$grammar-cel)
                              ("clojure" #$grammar-clojure)
                              ("cmake" #$grammar-cmake)
                              ("comment" #$grammar-comment)
                              ("cpon" #$grammar-cpon)
                              ("cpp" #$grammar-cpp)
                              ("css" #$grammar-css)
                              ("cue" #$grammar-cue)
                              ("d" #$grammar-d)
                              ("dart" #$grammar-dart)
                              ("dbml" #$grammar-dbml)
                              ("devicetree" #$grammar-devicetree)
                              ("dhall" #$grammar-dhall)
                              ("diff" #$grammar-diff)
                              ("dockerfile" #$grammar-dockerfile)
                              ("dot" #$grammar-dot)
                              ("dtd" #$grammar-dtd)
                              ("earthfile" #$grammar-earthfile)
                              ("edoc" #$grammar-edoc)
                              ("eex" #$grammar-eex)
                              ("elixir" #$grammar-elixir)
                              ("elm" #$grammar-elm)
                              ("elvish" #$grammar-elvish)
                              ("erlang" #$grammar-erlang)
                              ("esdl" #$grammar-esdl)
                              ("fidl" #$grammar-fidl)
                              ("fish" #$grammar-fish)
                              ("forth" #$grammar-forth)
                              ("fortran" #$grammar-fortran)
                              ("fsharp" #$grammar-fsharp)
                              ("gas" #$grammar-gas)
                              ("gdscript" #$grammar-gdscript)
                              ("gitattributes" #$grammar-gitattributes)
                              ("gitignore" #$grammar-gitignore)
                              ("gleam" #$grammar-gleam)
                              ("glimmer" #$grammar-glimmer)
                              ("glsl" #$grammar-glsl)
                              ("gn" #$grammar-gn)
                              ("go" #$grammar-go)
                              ("gotmpl" #$grammar-gotmpl)
                              ("gowork" #$grammar-gowork)
                              ("graphql" #$grammar-graphql)
                              ("groovy" #$grammar-groovy)
                              ("haskell" #$grammar-haskell)
                              ("hcl" #$grammar-hcl)
                              ("heex" #$grammar-heex)
                              ("hocon" #$grammar-hocon)
                              ("hoon" #$grammar-hoon)
                              ("hosts" #$grammar-hosts)
                              ("html" #$grammar-html)
                              ("hurl" #$grammar-hurl)
                              ;; ("hyprlang" #$grammar-hyprlang)))))
                              ("iex" #$grammar-iex)
                              ("ini" #$grammar-ini)
                              ("inko" #$grammar-inko)
                              ("java" #$grammar-java)
                              ("javascript" #$grammar-javascript)
                              ("jinja2" #$grammar-jinja2)
                              ("jsdoc" #$grammar-jsdoc)
                              ("json" #$grammar-json)
                              ("json5" #$grammar-json5)
                              ("jsonnet" #$grammar-jsonnet)
                              ("julia" #$grammar-julia)
                              ("just" #$grammar-just)
                              ("kdl" #$grammar-kdl)
                              ("koka" #$grammar-koka)
                              ("kotlin" #$grammar-kotlin)
                              ("latex" #$grammar-latex)
                              ("ld" #$grammar-ld)
                              ("ldif" #$grammar-ldif)
                              ("lean" #$grammar-lean)
                              ("ledger" #$grammar-ledger)
                              ("llvm" #$grammar-llvm)
                              ("log" #$grammar-log)
                              ("lpf" #$grammar-lpf)
                              ("lua" #$grammar-lua)
                              ("make" #$grammar-make)
                              ("markdoc" #$grammar-markdoc)
                              ("markdown" #$grammar-markdown)
                              ("markdown_inline" #$grammar-markdown_inline)
                              ("matlab" #$grammar-matlab)
                              ("mermaid" #$grammar-mermaid)
                              ("meson" #$grammar-meson)
                              ;; ("move" #$grammar-move)
                              ("nasm" #$grammar-nasm)
                              ("nickel" #$grammar-nickel)
                              ("nim" #$grammar-nim)
                              ("nix" #$grammar-nix)
                              ("nu" #$grammar-nu)
                              ("ocaml" #$grammar-ocaml)
                              ("odin" #$grammar-odin)
                              ("ohm" #$grammar-ohm)
                              ("opencl" #$grammar-opencl)
                              ("openscad" #$grammar-openscad)
                              ("org" #$grammar-org)
                              ("pascal" #$grammar-pascal)
                              ("passwd" #$grammar-passwd)
                              ("pem" #$grammar-pem)
                              ("perl" #$grammar-perl)
                              ("pest" #$grammar-pest)
                              ("php" #$grammar-php)
                              ("pkl" #$grammar-pkl)
                              ("po" #$grammar-po)
                              ("pod" #$grammar-pod)
                              ("ponylang" #$grammar-ponylang)
                              ("powershell" #$grammar-powershell)
                              ("prisma" #$grammar-prisma)
                              ("protobuf" #$grammar-protobuf)
                              ("prql" #$grammar-prql)
                              ("purescript" #$grammar-purescript)
                              ("python" #$grammar-python)
                              ;; ("qmljs" #$grammar-qmljs)
                              ("r" #$grammar-r)
                              ("regex" #$grammar-regex)
                              ("rego" #$grammar-rego)
                              ("rescript" #$grammar-rescript)
                              ("robot" #$grammar-robot)
                              ("ron" #$grammar-ron)
                              ("rst" #$grammar-rst)
                              ("ruby" #$grammar-ruby)
                              ("rust" #$grammar-rust)
                              ("scala" #$grammar-scala)
                              ("scheme" #$grammar-scheme)
                              ("scss" #$grammar-scss)
                              ("slint" #$grammar-slint)
                              ("smali" #$grammar-smali)
                              ("smithy" #$grammar-smithy)
                              ("sml" #$grammar-sml)
                              ("solidity" #$grammar-solidity)
                              ("spicedb" #$grammar-spicedb)
                              ("sql" #$grammar-sql)
                              ("sshclientconfig" #$grammar-sshclientconfig)
                              ("strace" #$grammar-strace)
                              ("supercollider" #$grammar-supercollider)
                              ("svelte" #$grammar-svelte)
                              ("sway" #$grammar-sway)
                              ("swift" #$grammar-swift)
                              ("t32" #$grammar-t32)
                              ("tablegen" #$grammar-tablegen)
                              ("tact" #$grammar-tact)
                              ("task" #$grammar-task)
                              ("tcl" #$grammar-tcl)
                              ("templ" #$grammar-templ)
                              ("todotxt" #$grammar-todotxt)
                              ("toml" #$grammar-toml)
                              ("tsq" #$grammar-tsq)
                              ("tsx" #$grammar-tsx)
                              ;; ("twig" #$grammar-twig)
                              ("typescript" #$grammar-typescript)
                              ("typst" #$grammar-typst)
                              ("ungrammar" #$grammar-ungrammar)
                              ("unison" #$grammar-unison)
                              ("uxntal" #$grammar-uxntal)
                              ("v" #$grammar-v)
                              ("vala" #$grammar-vala)
                              ("verilog" #$grammar-verilog)
                              ("vhdl" #$grammar-vhdl)
                              ("vhs" #$grammar-vhs)
                              ("vue" #$grammar-vue)
                              ("wast" #$grammar-wast)
                              ("wat" #$grammar-wat)
                              ("wgsl" #$grammar-wgsl)
                              ("wit" #$grammar-wit)
                              ("xit" #$grammar-xit)
                              ("xml" #$grammar-xml)
                              ("xtc" #$grammar-xtc)
                              ("yaml" #$grammar-yaml)
                              ("yuck" #$grammar-yuck)
                              ("zig" #$grammar-zig)
                              ;; ("janet-simple" #$grammar-janet-simple)
                              ("c-sharp" #$grammar-c-sharp)
                              ("gomod" #$grammar-gomod)
                              ("php-only" #$grammar-php-only)
                              ("ocaml-interface" #$grammar-ocaml-interface)
                              ("haskell-persistent" #$grammar-haskell-persistent)
                              ("llvm-mir" #$grammar-llvm-mir)
                              ("git-commit" #$grammar-git-commit)
                              ("git-rebase" #$grammar-git-rebase)
                              ("git-config" #$grammar-git-config)
                              ("embedded-template" #$grammar-embedded-template)
                              ("godot-resource" #$grammar-godot-resource)))))
             (replace 'install
                      (lambda* (#:key outputs #:allow-other-keys)
                               (let* ((out (assoc-ref outputs "out"))
                                      (bin (string-append out "/bin"))
                                      (hx (string-append bin "/hx"))
                                      (share (string-append out "/usr/share/helix"))
                                      (runtime (string-append share "/runtime")))
                                 (install-file "target/release/hx" bin)
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
                        ("rust-xtask"        ,rust-xtask-24.3.0))))
    (native-inputs (list git))
    (home-page "")
    (synopsis "")
    (description "")
    (license (list license:expat))))

helix
