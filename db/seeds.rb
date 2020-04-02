# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
Attendance.destroy_all
Tagging.destroy_all
Package.destroy_all
Skill.destroy_all

if User.find_by(email: "favier.cha@gmail.com") == nil
  a = User.create(email: "favier.cha@gmail.com", password: "charlotte", is_admin: true, first_name: "Charlotte", last_name: "Favier")
else 
  a = User.find_by(email: "favier.cha@gmail.com")
end

10.times do 
  User.create!(
    email: Faker::Internet.email,
    password: "motdepass",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name)
end

Package.create!(title: "Express : 48 heures", price_attendee: 1500, price_owner: 2000, number_of_days: 2)
Package.create!(title: "Moyen : 5 jours", price_attendee: 3000, price_owner: 4000, number_of_days: 5)
Package.create!(title: "Long : 7 jours", price_attendee: 4000, price_owner: 5300, number_of_days: 7)

Project.create!(title: "Nutriti", owner: a, state: "published", start_date: (Time.now + 259200), package: Package.all.sample, short_description: "Une appli qui te propose des repas pour la semaine selon tes objectifs et génère la liste des courses correspondante avec les quantités.", long_description: "Fini les prises de tête pour savoir ce que l’on veut manger, et si c’est équilibré ! 
Concrêtement, voici ce que j’aimerai réussir à faire :
L'utilisateur entre ses informations :
 taille + poids (=calcul de l'IMC)
 activité physique (nulle, modérée, régulière, intense ...)
 objectif : maigrir, grossir ou seulement équilibrer ses repas)
L'appli génère une semaine de repas type avec les quantités et la liste de courses, l'utilisateur voit son planning de repas. Il peut cliquer sur les repas pour les modifier (ex : changer un aliment qu'il n'aime pas etc...)
Je sais déjà coder, un deuxième développeur sur le projet serait le bienvenue, et surtout je n’ai aucune connaissances de strategy go-to-market. Marketeurs et business developers vous êtes les bienvenus !
" )
Project.create!(title: "iDressing", owner: a, state: "finished", start_date: (Time.now - 900000), package: Package.all.sample, short_description: "C'est un dressing en ligne où les users pourront gérer, prêter et vendre leurs vêtements." )
Project.create!(title: "SocialInvesting", owner: a, state: "published", start_date: (Time.now + 1000000), package: Package.all.sample, short_description: "réseau social de trading où chaque utilisateur définit la composition de son portefeuille virtuel et la partage", long_description: "Sur Social Investing, à l’inscription, chaque utilisateur a un certain montant d’argent qu’il investit comme il veut sur les différentes actions du CAC 40, et peut follow les users qu’il veut. Il peut également commenter les portefeuilles des autres utilisateurs.
Le but du projet c’est d’avoir une plateforme composée de trois principales fonctionnalités.
La première permet de voir tous les utilisateurs avec l’option de choisir les utilisateurs que l’on suit (mes follow)
La seconde fonctionnalité de la plateforme est une option qui permet de gérer mon portefeuille avec mes actions achetées et l’option d’acheter parmi les actions du CAC40 prédéfinie (une page achat pourrait être séparée selon l’ergonomie que nous définirons).
La dernière rubrique est la partie “Mon réseau” avec un affichage de la liste de mes follows avec leurs performances affiché en ordre décroissant.
Et en option, l’idée est de rajouter un comparatif de mon portefeuille par rapport à celui de mes follows.
Pour la partie Communication du projet, un compte twitter sera créé sur lequel nous publierons hebdomadairement les résultats du meilleur performeur.
" )
Project.create!(title: "Influence", owner: a, state: "published", start_date: (Time.now + 1800000), package: Package.all.sample, short_description: "plateforme qui permet de mettre en relation des influenceurs (tous types, YouTube, Instagram...), et des freelances. ", long_description: "De nos jours, le métier d'influenceur est plus en plus attrayant, mais celui-ci demande de nombreuses compétences techniques. Arrivé à un certain pallier, l'influenceur souhaitant proposer un contenu plus qualitatif devra déléguer certaines tâches. C'est là qu'Influence apporte une valeur ajoutée en facilitant et accélérant la mise en relation entre influenceurs et freelances.

Sur cette plateforme, un visiteur arrive sur le site et a la possibilité d’avoir un aperçu de la liste des projets ou bien de créer un compte Influencer ou Freelance.
En tant qu’Influencer, une fois connecté à son compte, il a la possibilité d’avoir accès à sa page profil ou bien de créer un nouveau projet. Depuis son dashboard projet l’Influencer pourra gérer les candidatures aux différents projets qu’il aura créés.
Et en tant que freelance, une fois connecté à son compte, le Freelance a la possibilité de naviguer à travers les différents projets et d’y postuler. Il pourra voir ensuite la liste des projets auxquels il aura postulé depuis son espace personnel.
" )
Project.create!(title: "VoisinAct", owner: a, state: "published", start_date: (Time.now + 800200), package: Package.all.sample, short_description: "plateforme de crowdfunding pour faire naître des initiatives citoyennes à l'échelle d'une ville ou d'un quartier. ", long_description: "Ce projet consiste à créer une plateforme de crowdfunding ayant pour objectif de faire naître des initiatives citoyennes locales, que ce soit à l’échelle d’une ville, d’un arrondissement, d’un quartier.
Prenons un exemple concret :
'Lucile habite un quartier de Montpellier, elle passe tous les soirs devant un grand mur abîmé et de couleur fade . Via la plateforme, elle s’inscrit et propose un projet de peinture/tag/calligraphie sur le mur. Elle estime l’ampleur du projet puis remplit un formulaire pour présenter ce qu’elle a imaginé :
l’estimation financière pour mener à bien le projet.
Les autres besoins matériels et logistiques.
Les besoins humains, c’est-à-dire l’effectif en main d’œuvre nécessaire.
La ou les dates approximatives de mise en œuvre du projet.'
Si le projet concerne la mobilisation de l’espace public ou empiète sur une main-mise des administrations territoriales locales, le projet est en attente de validation des autorités publiques en vigueur, puis il est publié.
Si les conditions matérielles et financières sont obtenues par l’engagement des riverains et par le versement de la somme adéquate via le crowdfunding, la somme est libérée et les participants s’organisent pour effectuer le projet.
En gros, à la fin de notre projet, un User devrait être capable de s’enregistrer sur la plateforme, aller voir les projets de sa ville, créer son propre projet, s’ajouter à un projet en tant que ‘Worker’, et pourra contribuer au financement et commenter.
" )
Project.create!(title: "Calypso", owner: a, state: "published", start_date: (Time.now + 350000), package: Package.all.sample, short_description: "Application de gestion qui facilite le fonctionnement des centres de plongée et les aide dans leurs activités quotidiennes.", long_description: "Le secteur de la plongée est très peu digitalisé. Les plus gros centres de plongée à travers la planète gèrent jusqu'à 300 clients, 80 instructeurs, 5 bateaux et doivent organiser le planning chaque jour...sur papier ! Perte de temps, maux de tête et complications assurés! Bref c'est la galère. Notre solution: Calypso!
Calyspo est une application de gestion qui facilite le fonctionnement des centres de plongée et les aide dans leurs activités quotidiennes. Les managers ou responsables de centres auront accès à un dashboard personnel et pourront visualiser en temps réel le planning et le modifier en quelques clics.
Les avantages pour les centres de plongées:
optimisation des tâches répétitives sans valeur ajoutée
simplification de l'organisation des plannings journaliers
amélioration du suivi client (paiement, annulation, réservation, historique, etc)
meilleure gestion des équipements du centre et des instructeurs (planning, paie; etc)
Le visiteur de l’application a plusieurs possibilités :
Première visite: il lui est proposé via un call-to-action de bénéficier d'un test gratuit de l'application. 
Utilisateur administrateur: il peut se connecter à l'espace de son club. Il a ainsi accès à la plateforme de gestion de l'app qui prend la forme d'un dashboard. Celui-ci donne en temps réel des informations relatives à la journée, vérification de la disponibilité du matériel, etc. Il s'agit d'un outil permettant un suivi administratif et pédagogique optimal.
" )
Project.create!(title: "Easy Escalade", owner: a, state: "published", start_date: (Time.now + 1800000), package: Package.all.sample, short_description: "C'est un site comparateur de salles d'escalade ", long_description: "Easy Escalade permet aux adeptes de l’escalade de faire une comparaison de salles d'escalade personnalisé, utilisable dans toute la France.
Sur la page d'accueil, l’utilisateur est invité à rentrer sa ville dans la barre de recherche. Il clique et est amené sur une page qui affiche les salles d'escalade de sa ville triées par popularité par défaut. Il peut affiner sa recherche grâce à des filtres de base (prix à la session, horaires, localisation) situés en haut de la page. Un bouton 'recherche avancée' affichera des critères plus précises et personnalisables. La liste des salles changera en fonction des critères, en affichant dans l'ordre du mieux adapté au moins adapté à ses besoins. En cliquant sur une salle, l'utilisateur retrouve les informations complètes liées à cette salle, des images et des commentaires.
Si l'utilisateur s'inscrit à Easy Escalade, il aura accès à plus de contenu. Il pourra enregistrer ses salles préférées, poster des commentaires, noter les salles, et voir les événements des salles d'escalade près de chez lui grâce à une page 'Agenda'. Ses préférences sont enregistrés.
" )
Project.create!(title: "Boostme", owner: a, state: "finished", start_date: (Time.now - 259200), package: Package.all.sample, short_description: "BoostMe est notre plateforme de eloboost pour le jeu League of Legends. ")
Project.create!(title: "Reliev", owner: a, state: "finished", start_date: (Time.now - 259200), package: Package.all.sample, short_description: "plateforme de mise en relation entre entreprises et professionnels du massage." )
Project.create!(title: "Peerclub.io", owner: a, state: "finished", start_date: (Time.now), package: Package.all.sample, short_description: "Suis le rythme, travaille en communauté physique ou à distance et organise ta réussite avec PeerClub" )

Skill.create!(title:"Développeur Front")
Skill.create!(title:"Développeur Back")
Skill.create!(title:"Graphiste")
Skill.create!(title:"Product Manager")
Skill.create!(title:"Ventes")
Skill.create!(title:"Social Media Manager")
Skill.create!(title:"Growth Hacker")
Skill.create!(title:"SEO Specialist")
Skill.create!(title:"Marketing")
Skill.create!(title:"Communication")
Skill.create!(title:"Customer Success")
Skill.create!(title:"Operations")
Skill.create!(title:"Data scientist")

20.times do
    Attendance.create!(
        attendee: User.all.sample,
        project: Project.all.sample,
        state: "paid")
end

30.times do 
  Tagging.create!(
    tag: Tag.all.sample,
    project: Project.all.sample)
end