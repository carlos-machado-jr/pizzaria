
<main id="main">
    <section>

            <div id="title-cardapio">

                 <h1>Faça o seu pedido</h1>

                 <h5>Cardápio Completo sujeito a alterações.</h5>
            </div>
   
              <div id="nav-tab">
               

                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#info">MASSAS</a></li>
                        <li><a data-toggle="tab" href="#menu1">BEBIDAS</a></li>
                    </ul>
               </div>       
                        
            <div class="tab-content">
                  <div id="info" class="tab-pane fade in active">
                              
                    <div class="container">
                        <div class="row">
                        
                            {foreach from=$PRO item=P}
                              {if $P.cat_nome == "massas" }
                  
                                <div class="card col-md-3">

                                    <div class="card-header">
                                           <img src="{$GET_PUBLIC}image/{$P.prod_img}.png" alt="">
                                    </div>
                                  
                                    <div class="card-body">
                                
                                      <h1>{$P.prod_nome}</h1>
                                      <p>{$P.prod_preco}</p>
                                
                                
                                    </div> 

                                
                                    <div class="card-footer">
                                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#<?php $modal = 'modal_1'; echo $modal; ?>">
                                                            Pedir
                                      </button>
                                    </div>

                                </div>
                                {/if}
                            {/foreach}


                        </div>
                    </div>
                  </div>
                                       
                        
            
                        
                  <div id="menu1" class="tab-pane fade">
                    <div class="container">
                      
                      <div class="row">

                                {foreach from=$PRO item=P}
                                       {if $P.cat_nome == "bebidas" }
                      
                                      <div class="card col-md-3">
                                            <div class="card-header">
                                                   <img src="{$GET_PUBLIC}image/{$P.prod_img}.png" alt="">
                                            </div>
                                      
                                            <div class="card-body">
                                          
                                              <h1>{$P.prod_nome}</h1>
                                              <p>{$P.prod_preco}</p>
                                          
                                          
                                            </div> 
                                      
                                            <div class="card-footer">
                                              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#<?php $modal = 'modal_1'; echo $modal; ?>">
                                                                      Pedir
                                              </button>
                                            </div>
                                      </div>
                                       {/if}
                                {/foreach}                        
                 
                      </div>
                    </div>              
                              
                  </div>
            </div>
  
  </section>
</main>
    