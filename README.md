# AkiBank: Apprentissage de l'architecture MVC avec SwiftUI et UIKit

Ce dépôt GitHub contient un projet d'apprentissage démontrant l'utilisation de l'architecture Modèle-Vue-Contrôleur (MVC) dans Swift, en combinant SwiftUI et UIKit pour la construction de l'interface utilisateur.

## Contenu Principal

- **ContentView.swift**: Ce fichier contient la vue principale de l'application, qui utilise SwiftUI pour créer l'interface utilisateur. Il affiche un conteneur représentant une vue UIKit (`AkiBankContainerRepresentable`) qui est responsable de l'affichage des données.
- **AkiBankModel.swift**: Définit le modèle de données `AkiBankModel`, qui représente les informations utilisateur telles que le nom d'utilisateur, le type de contrat et le solde actuel, ainsi que les transactions récentes.
- **Transaction.swift**: Définit la structure de données pour une transaction, comprenant la date, le montant et la description.
- **AkiBankContainerView.swift**: Cette classe UIKit (`UIView`) représente le conteneur qui affiche les détails du modèle `AkiBankModel`. Il utilise Auto Layout pour disposer les éléments d'interface utilisateur tels que les étiquettes.
- **AkiBankViewController.swift**: Un contrôleur de vue UIKit (`UIViewController`) qui intègre le conteneur `AkiBankContainerView` dans une hiérarchie de vues UIKit.

## Utilisation

Pour exécuter ce projet, ouvrez le fichier **swiftAppNotify.xcodeproj** dans Xcode et sélectionnez un simulateur ou un appareil iOS compatible pour exécuter l'application.

## Auteur

Ce projet a été créé par Akira Santhakumaran.

## Prévisualisations

![Preview](![Capture d’écran 2024-04-25 à 19 08 53](https://github.com/Akira98000/swift.mvcArchLearning/assets/75495075/31b9e20c-e3ae-42b3-b854-7c495f01597d)

## Remarque

Ce projet est destiné à des fins d'apprentissage et de démonstration de l'architecture MVC avec SwiftUI et UIKit. Il peut être étendu et amélioré pour créer des applications plus complexes.
