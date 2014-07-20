  # encoding: UTF-8

  Question.delete_all
  Answer.delete_all

  Question.send(:attr_accessible, :title, :value, :order)
  Answer.send(:attr_accessible, :text, :right, :order)

  question1 = Question.create(:title => 'El equipo Scrum consiste en:', :value => '1', :order => '1')
  question1.answers.create(:text => 'Un Jefe de proyecto, un Scrum Master y un Equipo de Desarrollo', :right => '0', :order => '1')
  question1.answers.create(:text => 'Un Dueño del producto, un Scrum Master y un Equipo de desarrollo', :right => '1', :order => '2')
  question1.answers.create(:text => 'Un Jefe de proyecto, un Dueño del producto y un Equipo de desarrollo', :right => '0', :order => '3')

  question2 = Question.create(:title => 'Los equipos Scrum son:', :value => '1', :order => '2')
  question2.answers.create(:text => 'Autoorganizados y disciplinados', :right => '0', :order => '1')
  question2.answers.create(:text => 'Disciplinados y multifuncionales', :right => '0', :order => '2')
  question2.answers.create(:text => 'Autoorganizados y multifuncionales', :right => '1', :order => '3')

  question3 = Question.create(:title => 'El Dueño del producto es:', :value => '1', :order => '3')
  question3.answers.create(:text => 'La persona encargada de resolver las dificultades del Equipo de desarrollo', :right => '0', :order => '1')
  question3.answers.create(:text => 'La persona responsable de coordinar al Equipo de desarrollo', :right => '0', :order => '2')
  question3.answers.create(:text => 'La persona responsable de gestionar la Lista del Producto (Product backlog)', :right => '1', :order => '3')

  question4 = Question.create(:title => 'Que el Equipo de desarrollo sea multifuncional significa que:', :value => '1', :order => '4')
  question4.answers.create(:text => 'Cada miembro del equipo debe saber hacer de todo en el trabajo diario', :right => '0', :order => '1')
  question4.answers.create(:text => 'El Equipo en su conjunto cuenta con todas las habilidades necesarias para entregar un incremento del trabajo', :right => '1', :order => '2')
  question4.answers.create(:text => 'Cada miembro del Equipo puede trabajar en más de un proyecto a la vez con una función distinta en cada uno', :right => '0', :order => '3')

  question5 = Question.create(:title => 'El tamaño del Equipo de desarrollo', :value => '1', :order => '5')
  question5.answers.create(:text => 'Puede ser tan grande como sea necesario', :right => '0', :order => '1')
  question5.answers.create(:text => 'Es lo suficientemente pequeño para ser ágil y lo suficientemente grande como para completar una cantidad de trabajo significativa', :right => '1', :order => '2')
  question5.answers.create(:text => 'No debe ser más grande del número de historias en la Pila del Producto (Product backlog)', :right => '0', :order => '3')

  question6 = Question.create(:title => 'El Scrum Master es', :value => '1', :order => '6')
  question6.answers.create(:text => 'El equivalente al tradicional jefe de proyectos', :right => '0', :order => '1')
  question6.answers.create(:text => 'El Scrum Master es la persona responsable de gestionar la Lista del Producto (Product backlog)', :right => '0', :order => '2')
  question6.answers.create(:text => 'Un líder al servicio del Equipo Scrum', :right => '1', :order => '3')

  question7 = Question.create(:title => 'La duración de los Sprints', :value => '1', :order => '7')
  question7.answers.create(:text => 'Dependerá del tamaño de elementos en la Pila del Sprint (Sprint backlog)', :right => '0', :order => '1')
  question7.answers.create(:text => 'Puede variar entre 1 y 3 meses', :right => '0', :order => '2')
  question7.answers.create(:text => 'Es más conveniente si la duración de los Sprints es consistente a lo largo del desarrollo', :right => '1', :order => '3')

  question8 = Question.create(:title => '¿Qué puede ser terminado en este Sprint?', :value => '1', :order => '8')
  question8.answers.create(:text => 'El número de elementos de la Lista de Producto seleccionados por el Sprint depende únicamente del Equipo de desarrollo', :right => '1', :order => '1')
  question8.answers.create(:text => 'El Dueño del producto y el Scrum Master deciden qué elementos de la Pila del producto se realizarán durante el Sprint', :right => '0', :order => '2')
  question8.answers.create(:text => 'El Scrum Master decide cuál es el objetivo del Sprint y lo traslada al Equipo de desarrollo', :right => '0', :order => '3')

  question9 = Question.create(:title => 'El Scrum Diario (Daily Scrum) es', :value => '1', :order => '9')
  question9.answers.create(:text => 'Una reunión de 15 minutos para que el Equipo sincronice sus actividades y cree un plan para las siguientes 24 horas', :right => '1', :order => '1')
  question9.answers.create(:text => 'La lista de procesos y reuniones que deben incorporarse a la rutina diaria de un Equipo Scrum', :right => '0', :order => '2')
  question9.answers.create(:text => 'La reunión en la que el Scrum Master comunica al Equipo de desarrollo las actividades a realizar durante las próximas 24 horas', :right => '0', :order => '3')

  question10 = Question.create(:title => 'El seguimiento del progreso del Sprint', :value => '1', :order => '10')
  question10.answers.create(:text => 'Se resolverá mediante un tablero Kanban y diagramas de Gantt', :right => '0', :order => '1')
  question10.answers.create(:text => 'En cualquier momento durante un Sprint, es posible sumar el trabajo restante en los elementos de la Pila del Sprint para gestionar su progreso', :right => '1', :order => '2')
  question10.answers.create(:text => 'Es responsabilidad del Dueño del producto y del Scrum Master', :right => '0', :order => '3')

  question = Question.create(:title => 'La Definición de Hecho:', :value => '1', :order => '11')
  question.answers.create(:text => 'Se utiliza para evaluar cuándo se ha completado el trabajo sobre el Incremento del producto en el Sprint', :right => '1', :order => '1')
  question.answers.create(:text => 'Es realizada únicamente por el Equipo de trabajo', :right => '0', :order => '2')
  question.answers.create(:text => 'Es utilizada al final del proyecto para comprobar que el trabajo ha sido correctamente realizado', :right => '0', :order => '3')

  question = Question.create(:title => 'La entrega de un Incremento de funcionalidad del producto en cada Sprint', :value => '1', :order => '12')
  question.answers.create(:text => 'Forma parte de los entregables del proyecto definidos al inicio del mismo', :right => '0', :order => '1')
  question.answers.create(:text => 'Es potencialmente utilizable y se ajusta a la Definición de Hecho', :right => '1', :order => '2')
  question.answers.create(:text => 'Debe ser realizada al menos dos veces durante el ciclo de vida del proyecto', :right => '0', :order => '3')

  question = Question.create(:title => 'Cada Incremento del producto es:', :value => '1', :order => '13')
  question.answers.create(:text => 'Toda unidad de código o librería utilizada en el proyecto', :right => '0', :order => '1')
  question.answers.create(:text => 'La entrega de software que se realiza a la finalización del proyecto y sus sucesivas versiones', :right => '0', :order => '2')
  question.answers.create(:text => 'Exhaustivamente probado, asegurando que todos los Incrementos funcionan en conjunto', :right => '1', :order => '3')

  question = Question.create(:title => 'El tiempo empleado en trabajar en los elementos de la Pila del Sprint', :value => '1', :order => '14')
  question.answers.create(:text => 'No es tenido en cuenta por Scrum. El trabajo restante y la fecha son las únicas variables de interés', :right => '1', :order => '1')
  question.answers.create(:text => 'Es la variable más utilizada en el seguimiento de proyectos con Scrum', :right => '0', :order => '2')
  question.answers.create(:text => 'El Equipo de Desarrollo monitoriza el tiempo empleado en cada elemento de la Pila del Sprint y lo registra diariamente', :right => '0', :order => '3')

  question = Question.create(:title => 'Si se requieren nueva tareas al aprender más acerca del trabajo necesario para conseguir el Objetivo del Sprint:', :value => '1', :order => '15')
  question.answers.create(:text => 'El Equipo de Desarrollo lo añade a la Pila del Sprint.', :right => '1', :order => '1')
  question.answers.create(:text => 'El Scrum Master deberá proteger al Equipo de cambios a la Pila del Sprint', :right => '0', :order => '2')
  question.answers.create(:text => 'El Dueño del Producto y los interesados deberán esperar a la siguiente contratación para acometer los cambios', :right => '0', :order => '3')

  question = Question.create(:title => 'El Scrum Master deberá:', :value => '1', :order => '16')
  question.answers.create(:text => 'Coordinar, asignar tareas y planificar un calendario adecuado para cada Sprint', :right => '0', :order => '1')
  question.answers.create(:text => 'Ser la persona responsable de definir el Objetivo del Sprint y planear la fecha de su entrega', :right => '0', :order => '2')
  question.answers.create(:text => 'Proteger al Equipo de Desarrollo de nuevos requisitos durante el Sprint', :right => '1', :order => '3')

  question = Question.create(:title => 'La Pila del Sprint es:', :value => '1', :order => '17')
  question.answers.create(:text => 'El conjunto de elementos de la Pila del producto seleccionados para el Sprint más el plan para conseguir el Objetivo del Sprint', :right => '1', :order => '1')
  question.answers.create(:text => 'La lista de requisitos definida y priorizada por el Dueño del producto al inicio del proyecto', :right => '0', :order => '2')
  question.answers.create(:text => 'La lista de tareas de la que tomaremos el elemento a desarrollar durante el Sprint', :right => '0', :order => '3')

  question = Question.create(:title => 'La Pila del Sprint:', :value => '1', :order => '18')
  question.answers.create(:text => 'No puede contener elementos no previstos al inicio del proyecto', :right => '0', :order => '1')
  question.answers.create(:text => 'Hace visible todo el trabajo que el Equipo de Desarrollo necesita para alcanzar el Objetivo del Sprint', :right => '1', :order => '2')
  question.answers.create(:text => 'Hace visible en una gráfica todo el trabajo restante para finalizar el proyecto', :right => '0', :order => '3')

  question = Question.create(:title => 'El Dueño del Producto hace seguimiento: ', :value => '1', :order => '19')
  question.answers.create(:text => 'De las horas de trabajo empleadas al menos una vez por cada Demo/Revisión del Sprint', :right => '0', :order => '1')
  question.answers.create(:text => 'Al menos una vez a la finalización de las fases de Análisis,  Diseño y Desarrollo', :right => '0', :order => '2')
  question.answers.create(:text => 'Del trabajo restante total al menos una vez por cada Demo/Revisión del Sprint', :right => '1', :order => '3')

  question = Question.create(:title => 'La información sobre el trabajo restante en las revisiones de Sprint previas', :value => '1', :order => '20')
  question.answers.create(:text => 'Se muestra de forma transparente a todos los interesados', :right => '1', :order => '1')
  question.answers.create(:text => 'Estará disponible sólo al Scrum Master y al Equipo de Desarrollo', :right => '0', :order => '2')
  question.answers.create(:text => 'Es calculada, junto a las horas empleadas en cada tarea, al menos una vez por semana', :right => '0', :order => '3')

  question = Question.create(:title => 'La responsabilidad de proporcionar todas las estimaciones recae en:', :value => '1', :order => '21')
  question.answers.create(:text => 'El Scrum Master', :right => '0', :order => '1')
  question.answers.create(:text => 'El Equipo de Desarrollo', :right => '1', :order => '2')
  question.answers.create(:text => 'El Dueño del producto', :right => '0', :order => '3')

  question = Question.create(:title => 'La preparación (grooming) de la Pila del Producto: ', :value => '1', :order => '22')
  question.answers.create(:text => 'Es un proceso en el cuál el Scrum Master y el Equipo de desarrollo evalúan la dificultad de los elementos a realizar durante el Sprint', :right => '0', :order => '1')
  question.answers.create(:text => 'Es un proceso en el cuál el Dueño del producto y el Scrum Master definen qué se hará durante el Sprint', :right => '0', :order => '2')
  question.answers.create(:text => 'Es el acto de añadir detalle, estimaciones y ordenación a los elementos de la Pila del Producto', :right => '1', :order => '3')

  question = Question.create(:title => 'La Pila del Producto:', :value => '1', :order => '23')
  question.answers.create(:text => 'Nunca deja de cambiar, es un artefacto vivo', :right => '1', :order => '1')
  question.answers.create(:text => 'Se compone de los requisitos establecidos en la contratación del proyecto', :right => '0', :order => '2')
  question.answers.create(:text => 'Requiere de la aceptación del Scrum Master para añadir modificaciones', :right => '0', :order => '3')

  question = Question.create(:title => 'La Pila del Producto está normalmente ordenada por:', :value => '1', :order => '24')
  question.answers.create(:text => 'Valor, riesgo, prioridad y necesidad', :right => '1', :order => '1')
  question.answers.create(:text => 'Los criterios de dificultad técnica definidos únicamente por el Equipo de Desarrollo', :right => '0', :order => '2')
  question.answers.create(:text => 'Dificultad y riesgo definidos por el Scrum Master y el Equipo de Desarrollo', :right => '0', :order => '3')

  question = Question.create(:title => 'La Pila del Producto cambia:', :value => '1', :order => '25')
  question.answers.create(:text => 'Solo a requirimiento del Scrum Master si un elemento es demasiado complejo', :right => '0', :order => '1')
  question.answers.create(:text => 'Cambia constantemente para que el producto sea más adecuado, competitivo y útil', :right => '1', :order => '2')
  question.answers.create(:text => 'Cuando el producto deja de ser competitivo o útil o necesita una refactorización', :right => '0', :order => '3')

