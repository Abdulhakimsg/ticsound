User.create(email: "kilo@lounge.com", username: "kilolounge", password: "password")
User.create(email: "sled@production.com", username: "sled", password: "password")
User.create(email: "gimme@shelter.com", username: "gimmeshelter", password: "password")
User.create(email: "canvas@club.com", username: "canvas", password: "password")
User.create(email: "zouk@club.com", username: "zouk", password: "password")
User.create(email: "nineteen@club.com", username: "1980", password: "password")
User.create(email: "pop@tart.com", username: "poptart", password: "password")
User.create(email: "potato@head.com", username: "potatohead", password: "password")
User.create(email: "council@hq.com", username: "council", password: "password")

Event.create(name: "Oddisee presented by Collective Minds x Kilo Lounge",
             venue: "Kilo Lounge",
             address: "21 Tanjong Pagar Road",
             ticket_url: "https://ticketing.igo.events/e/304/oddisee-presented-by-collective-minds-x-kilo-lounge",
             description: "The son of Sudanese and American parents, Oddisee was born and raised in Washington DC, spending hot summers in Khartoum learning Arabic and swimming in the Nile. Oddisee took his first steps as an MC producer in the analog basement studio of his legendary neighbor, Garry Shider (Parliament Funkadelic) and has since performed hundreds of shows around the globe. ",
             starttime: DateTime.strptime("11/14/2018 21:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/15/2018 01:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/1/oddisee.jpg").open,
             user_id: 1)

Event.create(name: "BlackKajiXtra - Acid Mothers Temple & The Melting Paraiso UFO",
             venue: "Sled Production x Decline",
             address: "37 Geylang Lorong 23,Singapore 388371",
             ticket_url: "https://www.eventbrite.sg/e/blackkajixtra-acid-mothers-temple-the-melting-paraiso-ufo-tickets-50450871916?fbclid=IwAR3ryTkYA3VvgA5JJF0fDUx2IDNCHhuJZsvsYnfQrdANhQbOcELq8XBcbeE",
             description: "
             BlackKaji. 
             A study of the unseen, unsound, unsuspecting, unsustainable, unstable.
             This is a series conceived by Ujikaji and The Observatory.

             Acid Mothers Temple & The Melting Paraiso U.F.O.
             Opening Set by DJ Ujikaji
             In conjunction with the launch of Trails to the Cosmic Vibrations LP (AMT split with The Observatory)",
             starttime: DateTime.strptime("11/22/2018 19:30", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/22/2018 22:30", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("/Users/hakimabdul/Desktop/WDI/ticsound/public/uploads/event/image/2/42457886_2148839248492442_5575776206374043648_o.jpg").open,
             user_id: 2)

Event.create(name: "Gimme Shelter",
             venue: "Intermission Bar - at The Projector",
             address: "6001 Beach Road",
             description: "Gimme Shelter parties are about the people and the music. Bringing back forgotten dance classics and digging for undiscovered gems, we evoke a timeless house party vibe, with DJs throwing records on the turntables back to back, and where the only rule is EVERYBODY DANCE!",
             starttime: DateTime.strptime("11/17/2018 21:30", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 03:30", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/3/44460247_864535483670025_3741332332074762240_o.jpg").open,
             user_id: 3)

Event.create(name: "Sunset Pasar & Disco 2.0",
             venue: "Canvas Club",
             address: "20 Upper Circular Road, The Riverwalk",
             description: "Sunset Pasar is back for the 9th installment and 2nd run of Disco!! Join us for the good ol' vibes and get ready to get groovy at sunset, in good company with unique finds & crazy happy hour all day! 

             SHOP the flea market from the wardrobes of an eclectic array of fashion & lifestyle personalities and tightly curated selection of indie labels. 
             
             DANCE at our very special edition of Sunset Disco!
             4-10pm:
             • Toppings (Ice Cream Sundays)
             • Funk Bast*rd (Darker Than Wax)
             • Aalely (Canvas Club)
             
             PLAY and get your hands dirrty at our live silkscreen party by our friends, the WUZHENGCLAN! If you have a boring old tote bag or t-shirt, bring it over and they'll jazz it up for you on the spot! 
             
             DRINK and stay hydrated with Canvas Club! Pick your poison with HAPPY HOUR ALL DAY!! 
             
             PETS ARE WELCOME AND ADMISSION IS FREE!",
             starttime: DateTime.strptime("11/17/2018 13:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/17/2018 21:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/4/Sunset Pasar.png").open,
             user_id: 4)

Event.create(name: "Sunday Social Market",
             venue: "Camp Kilo Charcoal Club",
             address: "66 Kampong Bugis",
             description: "Sunday Social returns to Camp Kilo Charcoal Club for another wholesome day of music, food and shopping! 

            The Sunday Social Market is a passion project of DJ Zig Zach and Jade Amar, with two very different backgrounds: Music and Fashion. The idea was to create a space where people can hang out with their friends, listen to good music, eat delicious food and discover local brands and talented crafters. All the things they love in one place!
            
            Expect some good ol' House music, artisanal bakers and crafters, interior decor, fashion accessories and of course the hearty roasts from Camp Kilo Charcoal Club.",
             starttime: DateTime.strptime("11/18/2018 12:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 22:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/5/43122710_701850096854936_2521396504288034816_o.jpg").open,
             user_id: 1)

Event.create(name: "Crowd CTRL Presents LeNERD & Sayvere with DJ Rey & TMO",
             venue: "Capital Zouk",
             address: "3C River Valley Road",
             description: "Crowd CTRL Presents LeNERD & SAYVERE with DJ Rey & TMO
            17 NOV 2018 | Capital Zouk
            
            Crowd CTRL is the leading night of the #SGBassMusic movement that aims to support Trap, Bass & anything hot at the moment.
            
            ► LINE UP ◄
            
            • DJ REY
            A new DJ with a taste for the harder styles of music.
            
            • DJ TMO	
            All Beats Cineleisure Finalist & Phuture DJ Battle 2017 runner up.
            
            • LeNERD & SAYVERE (Main Act)
            A side project pushing new music to the masses by blending timeless commercial hits with trendy remixes of their own coupled with high energy MC-ing & crowd interaction.
            
            THIS EVENT IS 21+",
             starttime: DateTime.strptime("11/17/2018 22:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 04:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/6/44588065_1730240497104947_7278995545446678528_o.jpg").open,
             user_id: 5)

Event.create(name: "Do The Hustle",
             venue: "NINETEEN80",
             address: "21 Tanjong Pagar Road",
             description: "Saturdays
            9pm - 3am
            
            << Do The Hustle >>
            80s - 00s 
            feat. DJ Ollie'des and Bobos
            
            Get your dough and bounce with Ollie’Des and Bobos into the Saturday flow!
            
            
            > Cover charge of $18 applies after 10pm,inclusive of 1 standard house pour drink. 
            > Dress code is smart casual (no sandals and singlets for men; flip flops, beach and sports wear for all) after 9.30pm on club nights.
            ",
             starttime: DateTime.strptime("11/17/2018 21:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 03:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/7/38267262_644529529266107_5795697081892995072_o.jpg").open,
             user_id: 6)

Event.create(name: "Electric Feel: C'mon Do The 80s With Me",
             venue: "Hard Rock Cafe Singapore",
             address: "50 Cuscaden Road",
             ticket_url: "https://bit.ly/pt241118?fbclid=IwAR1gQVRjON2Wumot5h7S588MkV1Hxb8ElM42F9Pg2bBUvdVMgUqytVqqwXw",
             description: "We are pleased as punch to announce the return of Electric Feel, this time at a brand new spot to strut your moves and lose your blues - Hard Rock Cafe. Dust those dancing shoes and set for another night of 80s sonics by the kings, queens and assorted royalty the likes of Kylie, Cyndi, Maddie, Rick, Michael, Prince, Janet, Wham, Depeche Mode, New Order, Talking Heads, The Cure, Culture Club, Hall & Oates, and a whole load of one-hit wonders and forgotten gems, bringing your an 80s party to end all 80s parties!

            Your 80s daddies weelikeme & KiDG once again go behind the wheel of the Delorean to bring you another illin time with some of the maddest earworms to celebrate the best era ever.
            
            This is our penultimate party of 2018, so you Maneaters and Ladykillers, go the full nine yards and get into the groove with your craziest costumes, facepaints, glitter, fab hair, and get physical with us on the dancefloor! ",
             starttime: DateTime.strptime("11/24/2018 22:30", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 04:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/8/electricfeel.jpg").open,
             user_id: 7)

Event.create(name: "The Foundation presents Dicky Trisco",
             venue: "Potato Head",
             address: "36 Keong Saik Road",
             description: "After two amazing events showcasing some of the worlds finest disco producers / DJs in Ray Mang, Faze Action and Alan Dixon, The Foundation returns with a very special guest and good friend DICKY TRISCO. No stranger to Singapore, we are super happy he decided to bring the disco heat to The Foundation's next dancfloor!
            .
            DICKY TRISCO >>>>
            DT has been at the heart of the disco resurgence through his output on various big-hitting labels such as Disco Deviance, Down In The Basement, Barefoot Beats, Kolour and Labor Of Love amongst others, and through his pioneering production work as part of Boogie Corporation (2020 Vision). 
            .
            Dicky has also formed a formidable DJ and production partnership alongside Pete Herbert, and together they have released on various highly respected imprints plus their own Maxi Discs and Paradise Row labels, as well as producing high profile remixes for the likes of Danielle Baldelli, Tensnake, Belle & Sebastian and Faze Action. 
            .
            As a disc jockey, DT packs a little bit of everything into his sets and is committed to the idea that music and club nights should be all about the pure escapism and joy of dancing. 
            .
            These days DT holds down a busy touring schedule around the globe while still managing to release his music regularly on a host of underground imprints. He is currently working on a number of projects including original disco material for release on File Under Disco and a House project for Home Taping.
            .
            Whether it be beach parties, after parties, underground disco dens, supper clubs, super clubs, hippie markets or festivals, DT is always ready to rock the dance floor and has done so all around the world with regular tours to South America, Central America, USA, South-East Asia, Japan, China, Australia and of course Europe, plus annual appearances at events like Love International, Electric Elephant, Festival No 6, Glastonbury, Mareh (Brasil) and in Ibiza.
            .
            Enough words. 
            .
            LET’S DANCE!!!",
             starttime: DateTime.strptime("11/09/2018 20:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/10/2018 02:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/9/44629765_281202925833610_9099842781647470592_o.jpg").open,
             user_id: 8)

Event.create(name: "Sundown Sundays",
             venue: "Potato Head",
             address: "36 Keong Saik Road",
             description: "Rev up your Sundays with Potato Head Singapore's new Sundown Sundays.

            Kicking off from 4pm at the rooftop, Sundown Sunday invites you to eat, drink and relax while Chinatown bustles right below you and the CBD area in the distance acts as your back drop for your last hurrah of the weekend. 
            
            Soundtracked by laidback, island-inspired sounds, enjoy FREE FLOW of house pour spirits, Aperol/Campari spritzers, and chicken skewers, grilled and served a la minute. All yours to the tune of only $58++ per person!
            ",
             starttime: DateTime.strptime("11/11/2018 16:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/11/2018 10:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/10/37786612_1328418267260611_1205245544985788416_o.jpg").open,
             user_id: 8)

Event.create(name: "Council Saturdays: Haan, Julien Brochard, Satish K & Sivanesh",
             venue: "Headquarters",
             address: "66 Boat Quay",
             description: "It’s a Saturday so dance like you mean it. Join us for one last round of weekend dancing, as resident #TechnoWonderBoy Julien Brochard gets into the cage with Haan to serve up the dark grooves and floor-stomping techno that will leave you dancing with reckless abandon.

            Upstairs sees Satish K and Sivanesh pair up to send the dance floor into a hypnotic stomp with their deep, spanking house grooves.
            ",
             starttime: DateTime.strptime("11/17/2018 22:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 04:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/11/44738544_686057981781023_6801026824261337088_n.jpg").open,
             user_id: 9)

Event.create(name: "Transition ft Menno De Jong",
             venue: "Canvas",
             address: "20 Upper Circular Road, The Riverwalk",
             description: "Menno de Jong first established himself as a producer with the release of ‘Guanxi’ on the British label Anjunabeats in 2004. In the years that followed he took the Trance scene by storm with singles such as ‘Tundra’, ‘Last Light Tonight’, ‘Spirit’, ‘Turtle Paradise’, ‘Never Lose The Magic’, ‘Place In The Sun’ featuring the vocals of Ellie Lawson and many more. This resulted in him being championed by the genre’s leading DJs including Tiësto, Armin van Buuren and Paul van Dyk. Numerous remixes for tracks such as ‘Mark Otten - So Serene’, ‘Karen Overton - Your Loving Arms’, ‘John O’Callaghan ft. Ria - I’ll Follow’ and the classic ‘Hydra - Affinity’ also proved popular within the Trance community.

            He went on to perform at major clubs and festivals worldwide, including Tomorrowland, Dreamstate, A State Of Trance, Amnesia Ibiza and Amsterdam Dance Event and over the years developed an unwitnessed agility in performing, equally talented in delivering prime time sets as well as marathons lasting as long as 10 hours.
            
            After working with a wide selection of leading labels Menno eventually signed with Black Hole Recordings in 2013, where he started releasing tracks on the legendary In Trance We Trust imprint. Arguably some of his biggest releases to date followed amongst which melodic masterpiece ‘Any Other Day’, the club anthem ‘Creatures Of The Night’ featuring Canadian vocalist Noire Lee, a series of three Psy and Tech influenced singles titled ‘Abhyasa’, ‘Ahimsa’ and ‘Ananda’ and most recently collaborating with Adam Ellis to produce what is hailed one of the biggest vocal Trance records of modern times: Set To Sail ft. Kate Louise Smith.
            
            As a result of this strain of successful releases Menno was asked to become A&R manager of In Trance We Trust in 2014, becoming the face of a label with one of the richest histories in the genre and providing a platform for future Trance stars alike.
            ",
             starttime: DateTime.strptime("11/17/2018 22:00", "%m/%d/%Y %H:%M"),
             endtime: DateTime.strptime("11/18/2018 04:00", "%m/%d/%Y %H:%M"),
             image: Rails.root.join("public/uploads/event/image/12/mennode.png").open,
             user_id: 4)
