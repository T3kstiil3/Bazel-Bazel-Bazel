# 🏗 📦 Bazel Bazel Bazel

## Description

Bazel, bazel, bazel, ... encore un outil de build dans notre boite à outil de développeurs front ? Webpack n'était pas déja la solution à tout ? Bon nous sommes d'accord, niveau configuration, ce n'est pas encore l'eldorado. Nous sommes plus proche de la configuration GruntJS que des scripts Gulp que nous avions pris l'habitude d'écrire. Et maintenant, Google nous parle de Bazel pour nos prochaines applications Angular ?! #fatigue 😴

Lors de cette conférence, nous allons vous présenter cette nouvelle solution, qui a déjà fait ces preuves chez Google. Nous aborderons ces cas d'utilisation (qui ne sont pas limités qu'aux projets front), l'interêt de l'utiliser dans votre prochain projet (ou pas), nos premiers pas (et nos premières galères 😅) avec.

A la fin de cette présentation, vous aurez un bon aperçu de cette solution et vous comprendrez pourquoi l'équipe d'Angular l'a intégré dans sa CLI 🎉.

## Slides

https://aurelien-loyer.fr/bazel-bazel-bazel/

## Projects

### SCSS

```
# ibazel build //:build_css
npm start
# bazel build //:build_css
npm run build 
# bazel build //:build_css_custom_params
npm run build:custom
# simply a bazel clean
npm run clean
```

## Liens

- https://bazel.build/
- https://github.com/bazelbuild/bazel
- https://github.com/bazelbuild/rules_typescript
- https://github.com/bazelbuild/rules_nodejs
