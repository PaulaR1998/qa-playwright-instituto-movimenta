Feature: Instituto Movimenta Educação | Home | Hero institucional e navegação principal
		
Scenario: 01 - Exibir hero com mensagem institucional e botão de ação
Cenário	Contexto	Status
Given 	que estou acessando o site do Instituto Movimenta Educação	Aprovado
And 	estou na página inicial	Aprovado
When 	a página inicial é carregada	Aprovado
Then 	devo ver uma imagem de destaque ocupando a largura principal do conteúdo	Aprovado
And 	devo ver, sobre a imagem, um bloco de texto com a mensagem "Fortalecer professores,."	Reprovado
And 	devo ver um botão com o rótulo "Conheça o Instituto" 	Aprovado
And 	o botão "Conheça o Instituo" deve estar visualmente destacado em relação ao fundo (cor sólida e contraste adequado)	Reprovado
Scenario: 02 - Garantir acessibilidade mínima do hero
When	a página inicial é carregada	Aprovado
Then	o texto "Fortalecer professores,." deve ser legível com contraste mínimo recomendado pelas diretrizes de acessibilidade	Aprovado
And	o botão "Conheça o Instituto"deve possuir um texto alternativo / label acessível que descreva sua ação (por exemplo, "Conheça o Instituto Movimenta")	Aprovado
And	a imagem de fundo do hero deve possuir texto alternativo adequado ou ser marcada como decorativa se não for essencial ao conteúdo	Ajustado
Scenario: 03 - Navegar para a página de apresentação ao clicar em "CONHEÇA"
Given	que estou vendo o hero da página inicial	Aprovado
When	eu clico no botão "Conheça o Instituto" 	Aprovado
Then	devo ser redirecionado para uma página de apresentação institucional do Instituto Movimenta Educação	Aprovado
And	a página de destino deve apresentar conteúdo sobre o instituto (Formação,Conexão,Impacto Social, Voz )	Aprovado
  Scenario: 04 - Exibição responsiva do hero em tela desktop
Given	que acesso a página inicial em um dispositivo com largura de tela típica de desktop	Aprovado
When	a página é carregada	Aprovado
Then	a imagem de fundo do hero deve aparecer centralizada e recortada sem distorções	Aprovado
And	o bloco de texto com a mensagem deve estar centralizado horizontalmente sobre a imagem	Aprovado
And	o botão "Conheça o Instituto" deve estar alinhado ao texto da mensagem	Aprovado
Scenario: 05 - Exibição responsiva do hero em tela mobile
Given	que acesso a página inicial em um dispositivo móvel com largura reduzida	Aprovado
When	a página é carregada	Aprovado
Then	a imagem de fundo do hero deve ajustar-se à largura da tela sem distorções	Ajustado
And	o texto "Fortalecer quem ensina. Transformar quem aprende." deve permanecer legível sem truncamento	Ajustado
And	o botão "Conheça o Instituto" deve permanecer visível sem a necessidade de rolagem horizontal	Aprovado
Scenario: 06 - Visualização dos itens de navegação principais junto ao hero
When	a página inicial é carregada	Aprovado
Then	devo ver na barra de navegação superior os itens "Instituto", "Cursos", "Pra Lá e Pra Cá", "Colunistas", "Notícias", "Apoio e Parcerias" e "Contato"	Aprovado
And	devo ver o logotipo do Instituto Movimenta Educação no canto esquerdo da barra de navegação	Aprovado
And	devo ver o ícone de busca no canto direito da barra de navegação	Aprovado

Observação importante > 
Imagem banner hero é <img alt="Professora sorrindo em destaque no banner do Instituto Movimenta" fetchpriority="high" decoding="async" data-nimg="fill" class="scale-[1.35] object-cover object-[60%_center] sm:scale-[1.28] sm:object-[58%_center] md:scale-[1.4] md:object-center lg:-translate-x-44 lg:translate-y-5" sizes="(min-width: 1307px) 1179px, (min-width: 1024px) calc(100vw - 8rem), calc(100vw - 2rem)" srcset="/HomeBanner.png?width=139&amp;quality=75 139w, /HomeBanner.png?width=236&amp;quality=75 236w, /HomeBanner.png?width=272&amp;quality=75 272w, /HomeBanner.png?width=320&amp;quality=75 320w, /HomeBanner.png?width=360&amp;quality=75 360w, /HomeBanner.png?width=420&amp;quality=75 420w, /HomeBanner.png?width=480&amp;quality=75 480w, /HomeBanner.png?width=640&amp;quality=75 640w, /HomeBanner.png?width=750&amp;quality=75 750w, /HomeBanner.png?width=828&amp;quality=75 828w, /HomeBanner.png?width=840&amp;quality=75 840w, /HomeBanner.png?width=1080&amp;quality=75 1080w, /HomeBanner.png?width=1280&amp;quality=75 1280w" src="/HomeBanner.png?width=1280&amp;quality=75" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">