+++
title = "Notas de rodapé"
template = "article.html"
date = 2026-09-24
+++
Há poucas semanas, esbarrei n'um comando _git_ que nunca tinha visto: o [_git-notes_]. Ele funciona como um _post-it_, permitindo "grudar" anotações em qualquer [objeto _git_] sem alterá-lo. Achei útil.

As notas aparecem nos _logs_ e podem ser [compartilhadas com outros colaboradores] sem grande esforço. Lê-las fora do terminal, porém, é outra história. O GitHub [deixou de mostrá-las] em 2014, e clientes gráficos como o GitFox (macOS) e o Gitte (GNOME) tampouco oferecem suporte a elas.

A exceção que encontrei foi o Forgejo, o _software_ por trás do Codeberg, que não apenas exibe as notas como permite modificá-las e apagá-las. Ponto para o _software_ livre.

Quanto às minhas, têm sido um depósito de comentários irreverentes e de curiosidades pouco informativas, um prato cheio para curiosos. A obrigação formal de descrever e justificar cada mudança deixo para a mensagem de _commit_. As notas são para o resto.

[_git-notes_]: https://git-scm.com/docs/git-notes.html
[objeto _git_]: https://git-scm.com/book/en/v2/Git-Internals-Git-Objects
[compartilhadas com outros colaboradores]: https://stackoverflow.com/a/18269026
[deixou de mostrá-las]: https://github.blog/news-insights/git-notes-display/
