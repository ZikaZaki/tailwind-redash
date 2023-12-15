<template>
  <div class="group flex w-full h-full max-w-[400px] max-h-[280px] [perspective:1000px] rounded-2xl">
    <div class="relative h-full w-full rounded-2xl shadow-xl transition-all duration-500 [transform-style:preserve-3d] group-hover:[transform:rotateY(180deg)]">
      <div class="front absolute inset-0 h-full w-full card-bg text-white font-[inconsolata] text-shadow rounded-2xl shadow-md shadow-black/40">
        <div class="chip-bg rounded-lg absolute w-14 h-12 top-4 left-4">
          <svg 
            viewBox="0 0 511 511" xml:space="preserve"
            fill="currentColor"
            class="w-full h-full text-gray-400 opacity-50"
          >
            <path d="M455.5,56h-400C24.897,56,0,80.897,0,111.5v288C0,430.103,24.897,455,55.5,455h400c30.603,0,55.5-24.897,55.5-55.5v-288
              C511,80.897,486.103,56,455.5,56z M464,248H343v-56.5c0-4.687,3.813-8.5,8.5-8.5H464V248z M343,263h121v65H343V263z M479,223h17v65
              h-17V223z M479,208v-65h17v65H479z M464,168H351.5c-12.958,0-23.5,10.542-23.5,23.5V408H183V103h272.5c4.687,0,8.5,3.813,8.5,8.5
              V168z M168,248H47v-65h121V248z M32,288H15v-65h17V288z M47,263h121v65H47V263z M263,88V71h137v17H263z M248,88H111V71h137V88z
              M168,103v65H47v-56.5c0-4.687,3.813-8.5,8.5-8.5H168z M32,208H15v-65h17V208z M15,303h17v65H15V303z M47,343h121v65H55.5
              c-4.687,0-8.5-3.813-8.5-8.5V343z M248,423v17H111v-17H248z M263,423h137v17H263V423z M343,408v-65h121v56.5
              c0,4.687-3.813,8.5-8.5,8.5H343z M479,303h17v65h-17V303z M496,111.5V128h-17v-16.5c0-12.958-10.542-23.5-23.5-23.5H415V71h40.5
              C477.832,71,496,89.168,496,111.5z M55.5,71H96v17H55.5C42.542,88,32,98.542,32,111.5V128H15v-16.5C15,89.168,33.168,71,55.5,71z
              M15,399.5V383h17v16.5c0,12.958,10.542,23.5,23.5,23.5H96v17H55.5C33.168,440,15,421.832,15,399.5z M455.5,440H415v-17h40.5
              c12.958,0,23.5-10.542,23.5-23.5V383h17v16.5C496,421.832,477.832,440,455.5,440z"/>
            </svg>
        </div>
        <div class="logo absolute top-2 right-4 w-12 text-white">
          <svg
            version="1.1"
            id="visa"
            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 0 47.834 47.834"
            width="100%" height="100%"
            fill="currentColor" 
          >
            <g>
              <g>
                <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                            c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                            c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                            M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                            c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                            c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                            l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                            C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                            C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                            c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                            h-3.888L19.153,16.8z" />
              </g>
            </g>
          </svg>
        </div>
        <div class="number absolute top-24 left-12 my-0 mx-auto text-white">0984234 0923489 09823490</div>
        <div class="card-holder absolute top-40 left-4 my-0 mx-auto uppercase">
          <label>Card holder</label>
          <div></div>
        </div>
        <div class="card-expiration-date absolute my-0 mx-auto top-40 text-right left-auto right-4 uppercase">
          <label>Expires</label>
          <div></div>
        </div>
      </div>
      <div class="back absolute inset-0 h-full w-full card-bg rounded-xl px-12 [transform:rotateY(180deg)] backface-hidden">
        <div class="strip absolute top-8 left-0 w-full h-10 bg-gradient-to-br from-gray-800 to-black/90"></div>
        <div class="logo absolute bottom-2 right-4 w-12 text-white">
          <svg 
            version="1.1"
            id="visa"
            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 0 47.834 47.834"
            width="100%" height="100%"
            fill="currentColor" 
          >
            <g>
              <g>
                <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                            c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                            c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                            M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                            c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                            c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                            l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                            C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                            C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                            c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                            h-3.888L19.153,16.8z" />
              </g>
            </g>
          </svg>
        </div>
        <div class="ccv absolute top-24 right-0 left-0 my-0 mx-auto bg-white text-black text-right p-2 h-8 w-[90%] rounded-md">
          <label class="absolute bottom-7 right-3 mb-2">CCV</label>
          <div></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "CreditCard",
};
</script>

<style scoped>
  label {
    font-size: 0.75rem/* 12px */;
    font-weight: normal;
    line-height: 1rem/* 16px */;
    letter-spacing: 0.05rem;
    color: hsla(0, 0%, 100%, 0.7);
    text-transform: uppercase;
    text-shadow: none;
    opacity: 0.75;
    display: block;
    margin-bottom: 3px;
  }

  .card-bg {
    background: linear-gradient(135deg, #bd6772, #53223f);
  }

  .text-shadow {
    text-shadow: 0 1px 1px hsla(0, 0%, 0%, 0.3);
  }

  .chip-bg {
    background: linear-gradient(135deg, hsl(269,54%,87%) 0%,hsl(200,64%,89%) 44%,hsl(18,55%,94%) 100%);
  }
</style>