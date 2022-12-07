let select = document.querySelector('.select')
          let form = document.querySelector('.form-facture')
          let articleContrainer = document.querySelector('.article')
          let option = document.querySelector('.option-article')
          let disabled = document.querySelector('.disabled')
          function addDiv(className, value){
              let div = document.createElement('div')
              div.className = className
              if( value == null ) return div
              div.setAttribute('value', value)
              return div
          }
          function addInput( option, class_name, name, type = null){
              let input = document.createElement('input')
              input.className = class_name
              input.setAttribute('name', name)
              if (option == null && type != null ) {
                input.setAttribute('placeholder', 'quantete vendue')
                input.setAttribute( 'type', type )
                input.required = true
                return input
              }
              input.setAttribute('value', option.value)
              return input
          }
          function addButton(){
              let button = document.createElement('button')
              button.className = 'col btn btn-secondary'
              button.textContent = 'suprimer'
              button.addEventListener('click', supprime)
              return button
          }
          function supprime(){
              event.preventDefault()             
              let buttonr = event.target
              let parentDiv = buttonr.parentElement
              let input = buttonr.previousElementSibling
              let div = input.previousElementSibling
              let hiden = document.querySelectorAll('.hiden')
              let hiden_input
              hiden.forEach(inp => {
                if( inp.getAttribute('value') == div.getAttribute('value')) hiden_input = inp
              });
              hiden_input.parentElement.removeChild(hiden_input)
              console.log(hiden)
              ajouterOption(div)
              input.parentElement.removeChild(input)
              div.parentElement.removeChild(div)
              buttonr.parentElement.removeChild(buttonr)
              parentDiv.parentElement.removeChild(parentDiv)
          }
          function ajouterOption(div){
              let value = div.getAttribute('value')
              let text = div.textContent
              let option = document.createElement('option')
              option.setAttribute('value', value)
              option.textContent = text
              select.appendChild(option)
          }
          select.addEventListener("change",(e) =>{
              e.preventDefault()
              let article = select.options[select.selectedIndex]
              let div = addDiv("col me-3", article.getAttribute('value'))
              // console.log( div );
              let container = addDiv('row mb-3')
              // div1.textContent = client.text
              div.textContent = article.text // contenent le nom de l'article
              let hiden_input = addInput(article, 'hiden', 'articles')
              let quantite_input = addInput(null, 'form-control col me-3', 'quan', 'number')
              let button = addButton()
              container.appendChild(div)
              container.appendChild(quantite_input)
              container.appendChild(button)
              articleContrainer.appendChild(container)
              form.appendChild(hiden_input)
              article.parentElement.removeChild(article)
              disabled.selected = true
          })