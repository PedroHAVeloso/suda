import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/extensions/abbreviate_string.dart';
import 'package:suda_website/models/zombie_model.dart';
import 'package:suda_website/view/style/color.dart';

DeactNode zombieWidget(ZombieModel zombie) {
  return section(
    className: 'bg-$color-100 rounded-xl p-2 gap-2 flex flex-col min-w-[200px] '
        'max-w-[300px]',
    children: [
      abbr(
        className: 'no-underline',
        title: 'ID completo: ${zombie.id}',
        children: [
          h1(
            children: [txt('ID: ${zombie.id.abbreviate(14)}')],
          ),
        ],
      ),
      div(
        className: 'bg-$color-200 p-2 rounded-xl',
        children: [
          p(
            className: 'text-center font-bold',
            children: [
              txt('Localização:'),
            ],
          ),
          p(
            children: [
              txt('País: ${zombie.location.country}'),
              br(),
              txt('Estado: ${zombie.location.state}'),
              br(),
              txt('Cidade: ${zombie.location.city}'),
            ],
          ),
        ],
      ),
      p(
        className: 'px-2',
        children: [
          txt('Gênero: '),
          strong(children: [txt('${zombie.gender}')]),
          br(),
          txt('Peso: '),
          strong(children: [txt('${zombie.weight}')]),
          br(),
          txt('Altura: '),
          strong(children: [txt('${zombie.height}')]),
          br(),
          txt('Tipo sanguíneo: '),
          strong(children: [txt(zombie.bloodType)]),
        ],
      ),
      p(
        className: 'px-2',
        children: [
          txt('Músicas: '),
          fragment(
            zombie.musics.map((music) {
              if (zombie.musics.last == music) return txt('$music.');
              return txt('$music, ');
            }),
          ),
          br(),
          txt('Esportes: '),
          fragment(
            zombie.sports.map((sport) {
              if (zombie.sports.last == sport) return txt('$sport.');
              return txt('$sport, ');
            }),
          ),
          br(),
          txt('Jogos: '),
          fragment(
            zombie.games.map((game) {
              if (zombie.games.last == game) return txt('$game.');
              return txt('$game, ');
            }),
          ),
        ],
      ),
    ],
  );
}
