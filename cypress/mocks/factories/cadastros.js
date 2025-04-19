import { faker } from '@faker-js/faker';

const firstname = faker.person.firstName()
const lastname = faker.person.lastName()
const username = faker.internet.userName()
const password ='Qa123456!'

export default {
    cadastroData() {
        let data = {
            firstName: firstname,
            lastName: lastname,
            username: username,
            password: password,
        }
        return data
    }
}