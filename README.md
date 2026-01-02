# ETL Regulatorio Trimestral – Formulario 2450 | Netezza / IBM DataStage

## Descripción
Proceso ETL regulatorio desarrollado para la generación del **Formulario 2450**,
correspondiente al producto **Crédito en general**, con periodicidad trimestral.

El proceso consolida información de clientes activos, segmentada por tipo de cliente
y personalidad jurídica, cumpliendo reglas definidas por catálogos regulatorios.

La información generada sirve como insumo para reportes regulatorios trimestrales.

## Objetivo
- Identificar clientes activos del producto crédito
- Contabilizar clientes únicos por periodo trimestral
- Generar métricas regulatorias estandarizadas

## Periodicidad
- Proceso **trimestral**
- Corresponde al **cuarto trimestre del año**

## Reglas de negocio
- FORM: constante **2450**
- Producto o servicio: **Crédito en general (clave 3)**
- Tipo de cliente: **Persona Física Nacional (clave 1)**
- Personalidad jurídica: **Persona Física (01)**
- Se consideran únicamente clientes activos
- El número de clientes se obtiene mediante conteo de clientes únicos

## Campos generados

| Campo        | Descripción                         |
|-------------|-------------------------------------|
| FORM        | Clave del formulario                |
| PROD_SERV  | Producto o servicio                 |
| TIPO_CLIENTE | Tipo de cliente                    |
| PER_JUR    | Personalidad jurídica               |
| NUM_CTES   | Número de clientes activos          |

## Fuentes de información
- Data Warehouse (modelo relacional)
- Información de operaciones y participantes
- Relaciones entre clientes y operaciones

## Tecnologías utilizadas
- IBM DataStage
- Netezza SQL
- Data Warehouse
- Procesos batch regulatorios

## Nota de confidencialidad
Este repositorio contiene una **representación técnica** basada en experiencia real.
Los nombres de tablas, campos, productos y estructuras han sido **anonimizados**
y no corresponden a sistemas productivos reales.

