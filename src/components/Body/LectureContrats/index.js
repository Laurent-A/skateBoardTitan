import React from 'react';

import './style.scss';



const LectureContrats = () => (
<div>
    <div class="row">
        <div class="col-md-9 m-5">
            <h3>
                Mon Board
            </h3>
        </div>
        <div class="col-md-9 ml-5">
            <table class="table">
                <thead class="bg-primary text-white">
                    <tr>
                        <th>
                            #
                        </th>
                        <th>
                            Type de contrat
                        </th>
                        <th>
                            Prestataire
                        </th>
                        <th>
                            Cout Mensuel
                        </th>
                        <th>
                            Date de fin d'engagement
                        </th>
                        <th>
                            
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-active">
                        <td>
                            1
                        </td>
                        <td>
                            Portable
                        </td>
                        <td>
                            Sosh
                        </td>
                        <td>
                            20 €
                        </td>
                        <td>
                            31/02/2021
                        </td>
                        <td>
                            <a class="btn btn-primary" href="#">Détails</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2
                        </td>
                        <td>
                            Assurance voiture
                        </td>
                        <td>
                            Auto Plus
                        </td>
                        <td>
                            38 €
                        </td>
                        <td>
                            28/02/2023
                        </td>
                        <td>
                        <a class="btn btn-primary" href="#">Détails</a>
                        </td>
                    </tr>
                    <tr class="table-active">
                        <td>
                            3
                        </td>
                        <td>
                            Assurance appart
                        </td>
                        <td>
                            Groupama
                        </td>
                        <td>
                            45 €
                        </td>
                        <td>
                            13/10/2023
                        </td>
                        <td>
                        <a class="btn btn-primary" href="#">Détails</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>  
    </div>
    <div>
        <button type="button" class="btn btn-primary btn-lg col-md-9 ml-5">+ Ajouter un contrat</button>
    </div>
</div>
);

export default LectureContrats;